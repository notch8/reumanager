class AcademicRecord < ActiveRecord::Base
  attr_accessible :academic_level, :degree, :finish, :gpa, :gpa_comment, :gpa_range, :start, :university, :major, :minor,
         :applicant_id, :created_at, :Lupdated_at, :transcript_file_name, :transcript_content_type, :transcript_file_size, :transcript_updated_at, :updated_at
  belongs_to :applicant, :class_name => "Applicant", :foreign_key => "applicant_id"
  attr_accessible :transcript
  has_attached_file :transcript, :url => ":rails_relative_url_root/system/:class/:attachment/:id_partition/:style/:filename"
  validates_attachment :transcript, :presence => true,
    content_type: { content_type: ['application/pdf','image/jpg', 'image/jpeg', 'image/gif', 'image/png'] },
    :size => { :in => 0..10.megabytes }

  validates :university, :presence => true
  validates :degree, :presence => true
  validates :start, :presence => true
  validates :finish, :presence => true
  validates :gpa, :presence => true
  validates :gpa_range, :presence => true

  def to_s
    record = "#{self.start.strftime("%Y.%m")} - #{self.finish.strftime("%Y.%m")} studying #{self.degree} at #{self.university}"
    record << "\n#{Markdown.render "GPA Comment: " + self.gpa_comment}" if self.gpa_comment
    record
  end

  def for_admin
  str = <<-HTML
  <b>University:</b> #{self.try(:university)}<br>
  <b>Start:</b> #{self.try(:start)}<br>
  <b>Finish:</b> #{self.try(:finish)}<br>
  <b>Degree:</b> #{self.try(:degree)}<br>
  <b>Major:</b> #{self.try(:major)}<br>
  <b>Minor:</b> #{self.try(:minor)}<br>
  <b>GPA:</b> #{self.try(:gpa)} out of #{self.try(:gpa_range)}<br>
  <strong>Transcript:</strong> <a href="#{self.transcript.url}">Download</a><br>
  HTML
  str.html_safe
  end

end
