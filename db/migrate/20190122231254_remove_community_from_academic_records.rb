class RemoveCommunityFromAcademicRecords < ActiveRecord::Migration
  def change
    remove_column :academic_records, :community, :string
  end
end
