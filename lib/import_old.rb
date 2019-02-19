# emails = Applicant.all.select(:email).map {|u| u.email}

# user = Old::User.all.detect do |user|
#     emails.exclude?(user.email)
# end

# user = Old::User.find 257

Old::User.all.each do |user|
   begin
 #   # Skip all admin records
 #   next unless user.academic_record.present?
    old_academic_record = user.academic_record
    old_extra = user.extra
    applicant = Applicant.new(
        first_name: user.firstname,
        last_name: user.lastname,
        phone: user.phone,
        dob: user.dob,
        citizenship: user.citizenship,
        disability: user.disability,
        gender: user.gender,
        ethnicity: user.ethnicity,
        race: user.race,
        email: user.email,
    )

    if old_academic_record.present?
        applicant.academic_level = old_academic_record.college_level
    end

    if old_extra.present?
        applicant.lab_skills = old_extra.lab_skills,
        applicant.cpu_skills = old_extra.comp_skills,
        applicant.underrepresented_eligibility = old_extra.research_interests,
        applicant.past_experience = old_extra.career,
        applicant.other_funds = old_extra.personal_statement,
        applicant.found_us = old_extra.learn
        applicant.gpa_comment = old_extra.gpa_comments,
        applicant.additional_info = old_extra.additional_info
    end


    # current address
    applicant.addresses.build(
        address: user.street,
        city: user.city,
        state: user.state,
        zip: user.zip,
        country: user.cresidence
    )
    # previous address
    applicant.addresses.build(
        address: user.pstreet,
        city: user.pcity,
        state: user.pstate,
        zip: user.pzip
    )

    if old_academic_record.present?
        applicant.records.build(
            university: old_academic_record.college,
            start: old_academic_record.college_start,
            finish: old_academic_record.college_end,
            gpa: old_academic_record.gpa,
            gpa_range: old_academic_record.gpa_range,
            applicant_id: old_academic_record.user_id,
            created_at: old_academic_record.created_at,
            updated_at: old_academic_record.updated_at,
            transcript_file_name: old_academic_record.transcript_file_name,
            transcript_content_type: old_academic_record.transcript_content_type,
            transcript_file_size: old_academic_record.transcript_file_size,
            transcript_updated_at: old_academic_record.transcript_updated_at,
            major: old_academic_record.major,
            minor: old_academic_record.major
        )
    end

    user.recommenders.each do |r|
        old_recommendation = r.recommendations.first
        if old_recommendation.present?
            recommendation = applicant.recommendations.build(
                known_applicant_for: old_recommendation.known_student,
                known_capacity: old_recommendation.know_capacity,
                overall_promise: old_recommendation.rating,
                undergraduate_institution: old_recommendation.undergrad_inst,
                body: old_recommendation.faculty_comment,
                applicant_id: old_recommendation.user_id,
                recommender_id: old_recommendation.recommender_id,
                created_at: old_recommendation.created_at,
                updated_at: old_recommendation.updated_at
            )
        else
            recommendation = applicant.recommendations.build()
        end
        recommendation.recommender = Recommender.new(
            first_name: r.name.split(" ").first,
            last_name: r.name.split(" ").last,
            title: r.title,
            department: r.department,
            organization: r.college,
            email: r.email,
            created_at: r.created_at,
            updated_at: r.updated_at
        )
    end



    # complete = applicant.validates_application_completeness
    # if !complete
    #   raise "Application not complete because:\n #{applicant.errors.full_messages.join("\n")}"
    # end
    applicant.save(validate: false)
    rescue => e
    puts "old user: #{user.id} not copied because #{e.message}"
 end
end