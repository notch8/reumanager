user = Old::User.all.detect do |user| user.academic_record.present? end


#Old::User.all.each do |user|
#  begin
#    # Skip all admin records
#    next unless user.academic_record.present?

    applicant = Applicant.new
    applicant.first_name = user.firstname
    # map the rest of the user fieds

    academic_record = applicant.records.build
    old_academic_record = user.academic_record
    academic_record.university = old_academic_record.college
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
