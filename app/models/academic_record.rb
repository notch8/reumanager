class AcademicRecord < ActiveRecord::Base
  attr_accessible :academic_level, :degree, :finish, :finish_month, :finish_year, :gpa, :gpa_comment, :gpa_range, :start, :university, :major, :minor
  belongs_to :applicant, :class_name => "Applicant", :foreign_key => "applicant_id"
  attr_accessible :transcript
  has_attached_file :transcript, :url => ":rails_relative_url_root/system/:class/:attachment/:id_partition/:style/:filename"
  validates_attachment :transcript, :presence => true,
    content_type: { content_type: ['application/pdf','image/jpg', 'image/jpeg', 'image/gif', 'image/png'] },
    :size => { :in => 0..10.megabytes }

  validates :university, :presence => true
  # validates :start, :presence => true
  validates :finish, :presence => true
  validates :gpa, :presence => true
  validates :gpa_range, :presence => true

  def to_s
    record = "studying #{self.degree} at #{self.university} until #{self.finish.strftime("%B %Y")} "
    record << "\n#{Markdown.render "GPA Comment: " + self.gpa_comment}" if self.gpa_comment
    record
  end

  def finish_year
    @finish_year ||= finish.try(:year)
  end

  def finish_year=(value)
    @finish_year = value
    self.finish = if self.finish.blank?
      Time.parse("#{value}-01-01 00:00:00")
    else
      Time.parse("#{value}-#{self.finish.month}-#{self.finish.day} 00:00:00")
    end
  end

  def finish_month
    @finish_month ||= finish.try(:month)
  end

  def finish_month=(value)
    @finish_month = value
    self.finish = if finish.blank?
      Time.parse("2020-#{value}-01 00:00:00")
    else
      Time.parse("#{self.finish.year}-#{value}-#{self.finish.day} 00:00:00")
    end
  end

end
