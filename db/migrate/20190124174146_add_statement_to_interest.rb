class AddStatementToInterest < ActiveRecord::Migration
  def change
    add_column :interests, :reu_experience, :boolean
    add_column :interests, :reu_experience_content, :text
    add_column :interests, :hear_about_reu, :text
    add_column :interests, :email_permission, :boolean
  end
end
