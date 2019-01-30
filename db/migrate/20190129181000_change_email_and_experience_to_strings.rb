class ChangeEmailAndExperienceToStrings < ActiveRecord::Migration
  def change
    change_column :interests, :email_permission, :string
    change_column :interests, :reu_experience, :string
  end
end
