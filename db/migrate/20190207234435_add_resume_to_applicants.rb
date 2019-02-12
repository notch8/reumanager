class AddResumeToApplicants < ActiveRecord::Migration

    def self.up
      add_attachment :applicants, :resume
    end

    def self.down
      remove_attachment :applicants, :resume
    end

end
