class AddNonDisclosedToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :non_disclosed, :string
  end
end
