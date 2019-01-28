class AddInterestFields < ActiveRecord::Migration
  def change
    add_column :interests, :bios_interest, :text
    add_column :interests, :education_background, :text
    add_column :interests, :career_goals, :text
    add_column :interests, :extra, :text
    add_column :interests, :reu_experience, :boolean
    add_column :interests, :reu_experience_content, :text
    add_column :interests, :hear_about_reu, :text
    add_column :interests, :email_permission, :boolean
    add_column :interests, :laboratory, :text
  end
end
