user = Old::User.all.detect do |user| user.academic_record.present? end


#Old::User.all.each do |user|
#  begin
#    # Skip all admin records
#    next unless user.academic_record.present?
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
        academic_level: old_academic_record.college_level,
        lab_skills: old_extra.lab_skills,
        cpu_skills: old_extra.comp_skills,
        email: user.email,
        underrepresented_eligibility: old_extra.research_interests,
        past_experience: old_extra.career,
        other_funds: old_extra.personal_statement,
        found_us: old_extra.learn
    )

    # applicant.first_name = user.firstname
    # applicant.last_name = user.lastname
    # applicant.phone = user.phone
    # applicant.dob = user.dob
    # applicant.citizenship = user.citizenship
    # applicant.disability = user.disability
    # applicant.gender = user.gender
    # applicant.ethnicity = user.ethnicity
    # applicant.race = user.race
    # applicant.statement = old_extra.personal_statement
    # applicant.underrepresented_eligibility = old_extra.research_interests
    # applicant.past_experience = old_extra.career
    # applicant.other_funds = old_extra.personal_statement
    # applicant.found_us = old_extra.learn
    # applicant.email = user.email

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

    applicant.academic_record.build(
        university: old_academic_record.college,
        start: old_academic_record.college_start,
        finish: old_academic_record.college_end,
        gpa: old_academic_record.gpa,
        gpa_range: old_academic_record.gpa_range,
        gpa_comment: old_extra.gpa_comments,
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


    user.recommendations.each do |r|
        recommendation = applicant.recommendations.build(
            known_applicant_for: r.known_student,
            known_capacity: r.known_capacity,
            overall_promise: r.rating,
            undergraduate_institution: r.undergrad_inst,
            body: r.faculty_comment,
            applicant_id: r.user_id,
            recommender_id: r.recommender_id,
            created_at: r.created_at,
            updated_at: r.updated_at
        )
        recommendation.recomender.build(
            first_name: r.recommender.name,
            last_name: r.recommender.name,
            title: r.recommender.title,
            department: r.recommender.department,
            organization: r.recommender.college,
            email: r.recommender.email,
            created_at: r.recommender.created_at,
            updated_at: r.recommender.updated_at
        )
    end




    # map the rest of the user fields

    # academic_record = applicant.records.build
    # old_academic_record = user.academic_record
    # academic_record.university = old_academic_record.college
    # academic_record.applicant_id = old_academic_record.user_id
    # applicant.lab_skills = old_extra.lab_skills
    # applicant.cpu_skills = old_extra.comp_skills
    # applicant.academic_level = old_academic_record.college_level
    # applicant.statement = old_extra.personal_statement
    # academic_record.start = old_academic_record.college_start
    # academic_record.finish = old_academic_record.college_end
    # academic_record.gpa = old_academic_record.gpa
    # academic_record.gpa_range = old_academic_record.gpa_range
    # academic_record.gpa_comment = old_extra.gpa_comments
    # academic_record.applicant_id = old_academic_record.user_id
    # academic_record.created_at = old_academic_record.created_at
    # academic_record.updated_at = old_academic_record.updated_at
    # academic_record.transcript_file_name = old_academic_record.transcript_file_name
    # academic_record.transcript_content_type = old_academic_record.transcript_content_type
    # academic_record.transcript_file_size = old_academic_record.transcript_file_size
    # academic_record.transcript_updated_at = old_academic_record.transcript_updated_at
    # academic_record.major = old_academic_record.major
    # academic_record.minor = old_academic_record.major
    # applicant.additional_info = old_extra.additional_info


    # map the rest of the academic record fields

    complete = applicant.validates_application_completeness
    if !complete
      raise "Application not complete because:\n #{applicant.errors.full_messages.join("\n")}"
    end

    applicant.save!
#  rescue => e
#    puts "old user: #{user.id} not copied because #{e.message}"
#  end
#end
