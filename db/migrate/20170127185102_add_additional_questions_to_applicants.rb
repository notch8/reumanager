class AddAdditionalQuestionsToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :research_experience, :text
    add_column :applicants, :recent_achievement, :text  
  end
end
