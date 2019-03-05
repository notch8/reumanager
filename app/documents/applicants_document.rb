class ApplicantsDocument
  require 'paperclip'
  include Prawn::View
  attr_accessor :applicants, :applicant

  def initialize(applicants)
    @applicants = applicants

    font_families.update(
     "DejaVuSans" => {
     :normal => "app/assets/fonts/DejaVuSans.ttf",
     :bold => "app/assets/fonts/DejaVuSans-Bold.ttf"
     }
    )

  end

  def build
    applicants.each do |applicant|
      @applicant = applicant
      header
      personal_info
      skills_and_experience
      academic_information
      recommenders
      recommendations
    end
  end

  def header
    pad_bottom(10){
    font('DejaVuSans') do
    text "<b>Application for: #{applicant.name}</b>", :size => 30, :inline_format => true
    stroke_horizontal_rule
    end
    }
  end

  def personal_info
    font('DejaVuSans') do
    pad(5) {
      text "<b><u>Personal Information</b></u>", :size => 17, :inline_format => true
      text "<b>Applicant:</b> #{applicant.name}", :inline_format => true
      text "<b>Email:</b> #{applicant.email}", :inline_format => true
      text "<b>Phone:</b> #{applicant.phone}", :inline_format => true
      text "<b>Cell Phone:</b> #{applicant.cell_phone}", :inline_format => true
      text "<b>DOB:</b> #{applicant.dob}", :inline_format => true
      text "<b>Citizenship:</b> #{applicant.citizenship}", :inline_format => true
      text "<b>Green Card:</b> #{applicant.green_card_holder}", :inline_format => true
      text "<b>Gender:</b> #{applicant.gender}", :inline_format => true
      text "<b>LGBT Community:</b> #{applicant.member_of_lgbt_community}", :inline_format => true
      text "<b>Hispanic/Latino:</b> #{applicant.hispanic}", :inline_format => true
      text "<b>Native:</b> #{applicant.native}", :inline_format => true
      text "<b>Pacific:</b> #{applicant.pacific}", :inline_format => true
      text "<b>Asian:</b> #{applicant.asian}", :inline_format => true
      text "<b>Caucasian:</b> #{applicant.caucasian}", :inline_format => true
      text "<b>Other:</b> #{applicant.other}", :inline_format => true
      text "<b>Non-Disclosed:</b> #{applicant.non_disclosed}", :inline_format => true
      text "<b>Father's Highest Education:</b> #{applicant.fathers_highest_education}", :inline_format => true
      text "<b>Mother's Highest Education:</b> #{applicant.mothers_highest_education}", :inline_format => true
      text "<b>Disability:</b> #{applicant.disability}", :inline_format => true
      text "<b>Military:</b> #{applicant.military}", :inline_format => true
      text "<b>Veteran Info:</b> #{applicant.veteran_information}", :inline_format => true
    }
    pad_bottom(10){
      pad(5) {
      text "<b>Resume</b>", :size => 14, :inline_format => true
      text "<b>Resume:</b> <a href='#{Rails.application.routes.url_helpers.root_url + applicant.resume.url.gsub(/submitteds|applicantss|rejecteds|completes|accepteds|applieds/, 'applicants')}'>Download</a>", :inline_format => true
      }
    }
    pad_bottom(10){
      pad(5) {
      text "<b>Research Interest</b>", :size => 14, :inline_format => true
      text "<b>Research Interest #1:</b> #{applicant.interest.research_interest_1}", :inline_format => true
      text "<b>Research Interest #2:</b> #{applicant.interest.research_interest_2}", :inline_format => true
      text "<b>Research Interest #3:</b> #{applicant.interest.research_interest_3}", :inline_format => true
      }
    }
    pad_bottom(10) {
      text "<b><u>Address</b></u>", :size => 17, :inline_format => true
      applicant.addresses.map do |address|
        pad_bottom(5) {
        text "<b>Label:</b> #{address.label}", :inline_format => true
        text "<b>Permanent Address:</b> #{address.permanent}", :inline_format => true
        text "<b>Street Address:</b> #{address.address}", :inline_format => true
        text "<b>Apartment:</b> #{address.address2}", :inline_format => true
        text "<b>City:</b> #{address.city}", :inline_format => true
        text "<b>State:</b> #{address.state}", :inline_format => true
        text "<b>Zip:</b> #{address.zip}", :inline_format => true
        }
      end
    }
    end
  end

  def skills_and_experience
    font('DejaVuSans') do
    text "<b><u>Skills and Experience</b></u>", :size => 17, :inline_format => true
    pad_bottom(10) {
      pad(5) {
      text "<b>Research Experience:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.research_experience}"
      }
      pad(5) {
      text "<b>Leadership Experience:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.leadership_experience}"
      }
      pad(5) {
      text "<b>Programming Experience:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.programming_experience}"
      }
      pad(5) {
      text "<b>Computer Skills:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.cpu_skills}"
      }
      pad(5) {
      text "<b>Laboratory Skills:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.laboratory}"
      }
      pad(5) {
      text "<b>Which scientific research areas, and aspects of scientific research, interest you? Which of the current research programs at BIOS would you like to participate in, given the opportunity, and why?</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.bios_interest}"
      }
      pad(5) {
      text "<b>Summarize your education background including courses relevant to the scientific research areas of interest:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.education_background}"
      }
      pad(5) {
      text "<b>Discuss your future education and career goals, ensuring that you identify the potential role of this REU program in achieving these goals:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.career_goals}"
      }
      pad(5) {
      text "<b>Please add anything else that you would like us to be aware of prior to considering your application. For example, if your undergraduate record is inconsistent, there may be valid reasons for this and you could state these here:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.extra}"
      }
      pad(5) {
      text "<b>I give permission for my email address to be shared with other REU ocean science sites for consideration:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.email_permission}"
      }
      pad(5) {
      text "<b>REU Experience:</b>", :size => 14, :inline_format => true
      text "#{applicant.interest.reu_experience}"
      }
    }
    end
  end

  def academic_information
    font('DejaVuSans') do
    pad_bottom(10) {
      text "<b><u>Academic Information</b></u>", :size => 17, :inline_format => true
      applicant.records.map do |record|
        pad_bottom(5) {
        text "<b>University:</b> #{record.university}", :inline_format => true
        text "<b>Start:</b> #{record.start}", :inline_format => true
        text "<b>Finish:</b> #{record.finish}", :inline_format => true
        text "<b>Major:</b> #{record.major}", :inline_format => true
        text "<b>Minor:</b> #{record.minor}", :inline_format => true
        text "<b>Is this a community college?</b> #{record.community}", :inline_format => true
        text "<b>Is this a PhD granting institution?</b> #{record.phd}", :inline_format => true
        text "<b>Is this a Historically Black College or University?</b> #{record.historic}", :inline_format => true
        text "<b>Is this a tribal college?</b> #{record.tribal}", :inline_format => true
        text "<b>GPA:</b> #{record.gpa} out of #{record.gpa_range}", :inline_format => true
        text "<b>Transcript:</b> <a href='#{Rails.application.routes.url_helpers.root_url + applicant.transcript.url}'>Download</a>", :inline_format => true
        }
      end
      pad(5) {
      text "<b>GPA Comments</b>", :size => 12, :inline_format => true
      text "#{applicant.gpa_comment}"
      }
      pad(5) {
        text "<b>Awards</b>", :size => 12, :inline_format => true
        applicant.awards.map do |award|
          pad_bottom(5) {
          text "<b>Title:</b> #{award.title}", :inline_format => true
          text "<b>Date:</b> #{award.date}", :inline_format => true
          text "<b>Description:</b> #{award.description}", :inline_format => true
          }
        end
      }
    }
    end
  end

  def recommenders
    font('DejaVuSans') do
    pad_bottom(10) {
      text "<b><u>Recommenders</b></u>", :size => 17, :inline_format => true
      applicant.recommenders.map do |recommender|
        pad_bottom(5) {
        text "<b>First Name:</b> #{recommender.first_name}", :inline_format => true
        text "<b>Last Name:</b> #{recommender.last_name}", :inline_format => true
        text "<b>Title:</b> #{recommender.title}", :inline_format => true
        text "<b>Department:</b> #{recommender.department}", :inline_format => true
        text "<b>Organization:</b> #{recommender.organization}", :inline_format => true
        text "<b>URL:</b> #{recommender.url}", :inline_format => true
        text "<b>Email:</b> #{recommender.email}", :inline_format => true
        text "<b>Phone:</b> #{recommender.phone}", :inline_format => true
        text "<b>Address:</b> #{recommender.address}", :inline_format => true
        text "<b>City:</b> #{recommender.city}", :inline_format => true
        text "<b>State:</b> #{recommender.state}", :inline_format => true
        text "<b>Zip:</b> #{recommender.zip}", :inline_format => true
        text "<b>Country:</b> #{recommender.country}", :inline_format => true
        }
      end
    }
    end
  end

  def recommendations
    font('DejaVuSans') do
    pad_bottom(10) {
      text "<b><u>Recommendations</b></u>", :size => 17, :inline_format => true
      applicant.recommendations.each do |recommendation|
        pad_bottom(5) {
        text "<b>Name:</b> #{recommendation.recommender.name}", :inline_format => true
        text "<b>Applicant Known For:</b> #{recommendation.known_applicant_for}", :inline_format => true
        text "<b>Known Capacity:</b> #{recommendation.known_capacity}", :inline_format => true
        text "<b>Overall Promise:</b> #{recommendation.overall_promise}", :inline_format => true
        text "<b>Undergraduate Institution:</b> #{recommendation.undergraduate_institution}", :inline_format => true
        text "<b>Received At:</b> #{applicant.recommendation.received_at}", :inline_format => true
        text "<b>Body:</b> #{applicant.recommendation.body}", :inline_format => true
        }
      end
    }
    start_new_page
  end
  end
end
