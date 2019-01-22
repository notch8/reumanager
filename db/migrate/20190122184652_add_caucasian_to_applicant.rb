class AddCaucasianToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :caucasian, :string
  end
end
