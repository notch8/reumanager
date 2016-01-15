# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def app_in_progress?
    DateTime.now.utc > (Setting.application_start.to_datetime + 8.hours) && DateTime.now.utc < (Setting.application_deadline.to_datetime + 8.hours)
  end

  def app_navbar
    check_admin ? render(:partial => "layouts/admin_app_navbar") : render(:partial => "layouts/app_navbar")
  end

  def toggle_wait_box
    link_to_function("OK", nil, :id => "OK", :class => "padded button") do |page|
      page[:wait_box].toggle
    end
  end

  def dynamic_title
    case
    when params[:controller] == "welcome"
      return "<title>#{Setting.university}, #{Setting.department} NSF REU</title>"
    when params[:controller] == "projects"
      return "<title>#{Setting.university}, #{Setting.department} NSF REU::: Projects</title>"
    when params[:controller] == "users" || params[:controller] == "academic_records" || params[:controller] == "extras" || params[:controller] == "recommenders"
      return "<title>#{Setting.university}, #{Setting.department} NSF REU ::: Application</title>"
    else
      return "<title>#{Setting.university}, #{Setting.department} NSF REU</title>"
    end
  end

  def check_admin
    current_user && current_user.role.name == "admin"
  end

  def check_academic_records(user)
    result = true if user && check_academic_record(user) && check_transcript(user)
  end

  def check_academic_record(user)
    result = true if user && user.academic_record
  end

  def check_transcript(user)
    result = true if user && user.academic_record.transcript_file_name && user.academic_record.valid?
  end

  def check_pdf(user)
    unless user.academic_record.transcript.content_type == "application/pdf" || user.academic_record.transcript.content_type == "application/octet-stream"
      "<p><strong>Your transcript does not appear to be in the PDF format. Please double check your file or perhaps try a different browser and/or computer.</strong></p>"
    else
      nil
    end
  end

  def check_recommender(user)
    result = true if user && user.primary_recommender?
  end

  def check_second_recommender(user)
    result = true if user && user.secondary_recommender?
  end

  def check_recommendation(user)
    result = true if user && user.recommendations.count == 2
  end

  def check_extras(user)
    result = true if user && user.extra && user.extra.personal_statement && user.extra.mentor1 != '' && user.extra.mentor2 != '' && user.extra.mentor3 != ''
  end

  def check_all(user)
    result = true if user && check_academic_records(user) && check_recommender(user) && check_second_recommender(user) && check_extras(user)
  end

  def gpa_range
    gpa_range = ["2.0"]
    float = 2.0
    gpa_range << sprintf("%.1f", float += 0.1) while float < 9.9
    return gpa_range
  end

  def disability_selection(user)
    if user && user.disability
      case user.disability
      when nil || ""
        'Prefer\ not\ to\ respond'
      when "No"
        "No"
      else
        "Yes"
      end
    else
      'Prefer\ not\ to\ respond'
    end
  end

end
