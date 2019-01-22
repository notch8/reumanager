class AddCommunityToAcademicRecords < ActiveRecord::Migration
  def change
    add_column :academic_records, :community, :string
  end
end
