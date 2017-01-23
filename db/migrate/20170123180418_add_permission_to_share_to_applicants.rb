class AddPermissionToShareToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :permission_to_share, :string
  end
end
