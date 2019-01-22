class AddOtherToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :other, :string
  end
end
