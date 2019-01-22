class AddPacificToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :pacific, :string
  end
end
