class AddFieldsToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :native, :string
    add_column :applicants, :hispanic, :string
    add_column :applicants, :pacific, :string
    add_column :applicants, :asian, :string
    add_column :applicants, :caucasian, :string
    add_column :applicants, :other, :string
    add_column :applicants, :non_disclosed, :string
  end
end
