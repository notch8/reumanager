class AddInterestFields < ActiveRecord::Migration
  def change
    add_column :interests, :bios_interest, :text
    add_column :interests, :education_background, :text
    add_column :interests, :career_goals, :text
    add_column :interests, :extra, :text
  end
end
