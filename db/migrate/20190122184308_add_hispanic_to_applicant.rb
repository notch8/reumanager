class AddHispanicToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :hispanic, :string
  end
end
