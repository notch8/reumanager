class ApplicantsDocument
  include Prawn::View
  attr_accessor :applicants, :applicant

  def initialize(applicants)
    @applicants = applicants
  end

  def build
    applicants.each do |applicant|
      @applicant = applicant
      header
      personal_info
      skills_and_experience
    end
  end

  def header
    pad_bottom(10){
    text "Application for: #{applicant.name}", :styles => [:bold], :size => 30
    stroke_horizontal_rule
    }
  end

  def personal_info
    pad(5) {
    text "Personal Information", :size => 18
    text "Applicant: #{applicant.name}"
    text "Email: #{applicant.email}"
    text "DOB: #{applicant.dob}"
    text "Gender: #{applicant.gender}"
    text "Ethnicity: #{applicant.ethnicity}"
    text "Race: #{applicant.race}"
    text "Disability: #{applicant.disability}"
    text "Citizenship: #{applicant.citizenship}"
    }
    pad(5) {
    text "Address", :size => 18
    applicant.addresses.map do |address|
      pad_bottom(5) {
      text "Label: #{address.label}"
      text "Permanent Address: #{address.permanent}"
      text "Street Address: #{address.address}"
      text "Apartment: #{address.address2}"
      text "City: #{address.city}"
      text "State: #{address.state}"
      text "Zip: #{address.zip}"
      }
    end
    }
    pad(5) {
    text "Statement", :size => 18
    text "#{applicant.statement}"
    }
    pad(5) {
    text "Additional Information", :size => 18
    text "#{applicant.additional_info}"
    }
    pad(5) {
    text "How did you hear about us?", :size => 18
    text "#{applicant.found_us}"
    }
  end

  def skills_and_experience
    pad(5) {
    text "Computer Skills", :size => 18
    text "#{applicant.cpu_skills}"
    }
    pad(5) {
    text "Lab Skills", :size => 18
    text "#{applicant.lab_skills}"
    }
    pad(5) {
    text "Please explain why you consider yourself eligible for this program as an individual from an ethnicity, background or other group that is disadvantaged and underrepresented. Please provide as much detail as possible:", :size => 18
    text "#{applicant.statement}"
    }
    pad(5) {
    text "Discuss your past research experiences. If you have not done any research yet, please list any relevant courses or other experiences you feel are relevant:", :size => 18
    text "#{applicant.statement}"
    }
    pad(5) {
    text "Will you receive funding from any other program throughout the summer? If "yes", please name funding source:", :size => 18
    text "#{applicant.statement}"
    }
  end
end
