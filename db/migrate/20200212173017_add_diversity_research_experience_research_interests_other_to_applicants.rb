class AddDiversityResearchExperienceResearchInterestsOtherToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :diversity, :text
    add_column :applicants, :research_experience, :text
    add_column :applicants, :research_interests, :text
    add_column :applicants, :other, :text
  end
end
