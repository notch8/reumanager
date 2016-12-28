module Old
  class AcademicRecord < ActiveRecord::Base
    establish_connection :old
    self.table_name = 'academic_records'


    belongs_to  :user
    has_attached_file         :transcript

    #  validates_attachment_presence :transcript
    #  validates_attachment_size :transcript, :less_than => 10.megabytes
    validates_presence_of     :college, :college_start, :college_end, :college_level, :major, :gpa, :gpa_range
    before_post_process :randomize_file_name

    private

    def randomize_file_name
      unless transcript_file_name == nil
        extension = File.extname(transcript_file_name).downcase
        self.transcript.instance_write(:file_name, "#{self.user.id}_#{ActiveSupport::SecureRandom.hex(24)}#{extension}")
      end
    end
  end
end
