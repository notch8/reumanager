class AcademicRecord < ActiveRecord::Base
  attr_accessible :academic_level, :degree, :finish, :gpa, :gpa_comment, :gpa_range, :start, :university, :major, :minor
  belongs_to :applicant, :class_name => "Applicant", :foreign_key => "applicant_id"
  attr_accessible :transcript
  has_attached_file :transcript, :url => ":rails_relative_url_root/system/:class/:attachment/:id_partition/:style/:filename"
  validates_attachment :transcript, :presence => true,
    content_type: { content_type: ['application/pdf','image/jpg', 'image/jpeg', 'image/gif', 'image/png'] },
    :size => { :in => 0..10.megabytes }

  validates :finish, presence: true
  validates :gpa, presence: true
  validates :gpa_range, presence: true
  validates :major, presence: true
  validates :start, presence: true
  validates :university, presence: true

  def to_s
    record = "#{self.start.strftime("%Y.%m")} - #{self.finish.strftime("%Y.%m")} studying #{self.degree} at #{self.university}"
    record << "\n#{Markdown.render "GPA Comment: " + self.gpa_comment}" if self.gpa_comment
    record
  end

  def for_admin
    str = <<-HTML
      <b>University:</b> #{self.university}<br>
      <b>Start:</b> #{self.start}<br>
      <b>Finish:</b> #{self.finish}<br>
      <b>Major:</b> #{self.major}<br>
      <b>Minor:</b> #{self.minor}<br>
      <b>GPA:</b> #{self.gpa} out of #{self.gpa_range}<br>
      <strong>Transcript:</strong> <a href="#{self.transcript.url}">Download</a><br>
    HTML
    str.html_safe
  end

end
