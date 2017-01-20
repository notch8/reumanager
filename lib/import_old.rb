user = Old::User.all.detect do |user| user.academic_record.present? end


#Old::User.all.each do |user|
#  begin
#    # Skip all admin records
#    next unless user.academic_record.present?

    applicant = Applicant.new
    old_extra = user.extra
    applicant.first_name = user.firstname
    applicant.last_name = user.lastname
    applicant.phone = user.phone
    applicant.dob = user.dob
    applicant.citizenship = user.citizenship
    applicant.disability = user.disability
    applicant.gender = user.gender
    applicant.ethnicity = user.ethnicity
    applicant.race = user.race
    applicant.statement = old_extra.personal_statement
    applicant.underrepresented_eligibility = old_extra.extra_research_interests
    applicant.past_experience = old_extra.career




    # map the rest of the user fieds

    academic_record = applicant.records.build
    old_academic_record = user.academic_record
    academic_record.university = old_academic_record.college

    applicant.lab_skills = old_extra.lab_skills
    applicant.cpu_skills = old_extra.comp_skills
    applicant.academic_level = old_academic_record.college_level
    applicant.statement = old_extra.personal_statement
    academic_record.start = old_academic_record.college_start
    academic_record.finish = old_academic_record.college_end
    academic_record.gpa = old_academic_record.gpa
    academic_record.gpa_range = old_academic_record.gpa_range
    academic_record.gpa_comment = old_extra.gpa_comments
    academic_record.applicant_id = old_academic_record.user_id
    academic_record.created_at = old_academic_record.created_at
    academic_record.updated_at = old_academic_record.updated_at
    academic_record.transcript_file_name = old_academic_record.transcript_file_name
    academic_record.transcript_content_type = old_academic_record.transcript_content_type
    academic_record.transcript_file_size = old_academic_record.transcript_file_size
    academic_record.transcript_updated_at = old_academic_record.transcript_updated_at



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
