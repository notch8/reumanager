class AddNativeToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :native, :string
  end
end
