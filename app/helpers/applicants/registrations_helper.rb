module Applicants::RegistrationsHelper
  def only_us_and_ca
    Carmen::Country.all.select{|c| %w{US CA}.include?(c.code)}
  end

  def recommendation_received_label(recommender)
    recommendation = current_applicant.recommendations.where(:recommender_id => recommender.id).first
    raw recommendation.valid?  ? " <span class='label label-success'>[RECEIVED]</span>" : " <span class='label label-info'>[NOT RECEIVED]</span> &nbsp;&nbsp;&nbsp; #{ link_to 'Resend Request', applicants_recommendations_request_path(recommender), class: 'btn btn-mini', method: :post}" if current_applicant.submitted?
  end

  def gpa_range
    gpa_range = ["2.0"]
    float = 2.0
    gpa_range << sprintf("%.1f", float += 0.1) while float < 9.9
    return gpa_range
  end

  def gpa_range_by_grade
    grades = [['', nil],
    ["AP Credit",10.0],
    ["A+",4.0],
    ["A",4.0],
    ["A-",3.7],
    ["B+",3.3],
    ["B",3.0],
    ["B-",2.7],
    ["C+",2.3],
    ["C",2.0],
    ["C-",1.7],
    ["D+",1.3],
    ["D",1.0],
    ["D-",0.7],
    ["F",0.0]]
    return grades
  end

  def custom_error_messages!
    return "" if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved",
                      :count => resource.errors.count,
                      :resource => resource.class.model_name.human.downcase)

    html = <<-HTML
    <div id="error_explanation" class='alert-danger' onclick="$(this).slideUp();">
      <h2>#{sentence}</h2>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

  def status_error_messages!
    #return "" if current_applicant.errors.empty?
    applicant = @applicant || current_applicant
    return "" if applicant.errors.empty?

    #messages = current_applicant.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    messages = applicant.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t("errors.messages.not_saved_status",
                      #:count => current_applicant.errors.count)
                      :count => applicant.errors.count)

    html = <<-HTML
    <div id="error_explanation" class='alert-warning' onclick="$(this).slideUp();">
      <h2>#{sentence}</h2>
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end

  def application_status
    case current_applicant.state
    when 'completed_recommender_info'
      status = "Ready to submit"
      message = "<p>Your application is ready to submit.  Please review your data and click the #{link_to "submit button", submit_application_path } when you are ready to submit your application.</p>"
    when 'submitted'
      status = "Application submitted"
      message = "<p>Your application has been submitted and your recommendation request has been sent. You will receive further updates
      by email.</p>"
    when 'complete'
      status = "Complete"
      message = "<p>Congratulations, your application is complete. Please check your email for further updates.</p>"
    when 'accepted'
      status = "Complete"
      message = "<p>Congratulations, your application is complete. Please check your email for further updates.</p>"
    when 'rejected'
      status = "Complete"
      message = "<p>Congratulations, your application is complete. Please check your email for further updates.</p>"
    else
      status = "Incomplete"
      message = "<p><strong>Your application is incomplete due to the errors mentioned above.  It will not be accepted until all of the necessary data has been added."
      message += " Please go back and #{link_to 'edit', edit_applicant_registration_path } your application</strong>.</p>"
    end

    html = <<-HTML
    <div id="application_status" class=#{current_applicant.errors.empty? ? "'alert alert-success'" : "'alert alert-error'"}>
      <h3>#{status}</h3>
      #{message}
    </div>
    HTML

    html.html_safe
  end

  def show_disability_input?
    current_applicant.disability && current_applicant.disability != 'No' && current_applicant.disability != ''
  end

  def mentor1_input?
    current_applicant.mentor1 &&
    current_applicant.mentor1 != 'Jeff Bowman' &&
    current_applicant.mentor1 != 'Dimitri Deheyn' &&
    current_applicant.mentor1 != 'Falk Feddersen' &&
    current_applicant.mentor1 != 'Sarah Gille' &&
    current_applicant.mentor1 != 'Vicki Grassian' &&
    current_applicant.mentor1 != 'Jennifer Haase' &&
    current_applicant.mentor1 != 'Paul Jensen' &&
    current_applicant.mentor1 != 'J. Tony Koslow' &&
    current_applicant.mentor1 != 'Lisa Levin' &&
    current_applicant.mentor1 != 'Dan Lubin' &&
    current_applicant.mentor2 != 'Deirdre Lyons' &&
    current_applicant.mentor1 != 'Richard Norris' &&
    current_applicant.mentor1 != 'Brian Palenik' &&
    current_applicant.mentor1 != 'Lynn Russell' &&
    current_applicant.mentor1 != 'Brice Semmens' &&
    current_applicant.mentor1 != 'Ana Sirovic' &&
    current_applicant.mentor1 != 'Dave Stegman' &&
    current_applicant.mentor1 != 'Lynne Talley' &&
    current_applicant.mentor1 != 'Lisa Tauxe' &&
    current_applicant.mentor1 != 'Jennifer Taylor' &&
    current_applicant.mentor1 != 'Jane Willenbring' &&
    current_applicant.mentor1 != ''
  end

  def mentor2_input?
    current_applicant.mentor2 &&
    current_applicant.mentor2 != 'Jeff Bowman' &&
    current_applicant.mentor2 != 'Dimitri Deheyn' &&
    current_applicant.mentor2 != 'Falk Feddersen' &&
    current_applicant.mentor2 != 'Sarah Gille' &&
    current_applicant.mentor2 != 'Vicki Grassian' &&
    current_applicant.mentor2 != 'Jennifer Haase' &&
    current_applicant.mentor2 != 'Paul Jensen' &&
    current_applicant.mentor1 != 'J. Tony Koslow' &&
    current_applicant.mentor2 != 'Lisa Levin' &&
    current_applicant.mentor2 != 'Dan Lubin' &&
    current_applicant.mentor2 != 'Deirdre Lyons' &&
    current_applicant.mentor2 != 'Richard Norris' &&
    current_applicant.mentor2 != 'Brian Palenik' &&
    current_applicant.mentor2 != 'Lynn Russell' &&
    current_applicant.mentor2 != 'Brice Semmens' &&
    current_applicant.mentor2 != 'Ana Sirovic' &&
    current_applicant.mentor2 != 'Dave Stegman' &&
    current_applicant.mentor2 != 'Lynne Talley' &&
    current_applicant.mentor2 != 'Lisa Tauxe' &&
    current_applicant.mentor2 != 'Jennifer Taylor' &&
    current_applicant.mentor2 != 'Jane Willenbring' &&
    current_applicant.mentor2 != ''
  end

  def mentor3_input?
    current_applicant.mentor3 &&
    current_applicant.mentor3 != 'Jeff Bowman' &&
    current_applicant.mentor3 != 'Dimitri Deheyn' &&
    current_applicant.mentor3 != 'Falk Feddersen' &&
    current_applicant.mentor3 != 'Sarah Gille' &&
    current_applicant.mentor3 != 'Vicki Grassian' &&
    current_applicant.mentor3 != 'Jennifer Haase' &&
    current_applicant.mentor3 != 'Paul Jensen' &&
    current_applicant.mentor1 != 'J. Tony Koslow' &&
    current_applicant.mentor3 != 'Lisa Levin' &&
    current_applicant.mentor3 != 'Dan Lubin' &&
    current_applicant.mentor2 != 'Deirdre Lyons' &&
    current_applicant.mentor3 != 'Richard Norris' &&
    current_applicant.mentor3 != 'Brian Palenik' &&
    current_applicant.mentor3 != 'Lynn Russell' &&
    current_applicant.mentor3 != 'Brice Semmens' &&
    current_applicant.mentor3 != 'Ana Sirovic' &&
    current_applicant.mentor3 != 'Dave Stegman' &&
    current_applicant.mentor3 != 'Lynne Talley' &&
    current_applicant.mentor3 != 'Lisa Tauxe' &&
    current_applicant.mentor3 != 'Jennifer Taylor' &&
    current_applicant.mentor3 != 'Jane Willenbring' &&
    current_applicant.mentor3 != ''
  end

end
