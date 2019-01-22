class AddAsianToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :asian, :string
  end
end
