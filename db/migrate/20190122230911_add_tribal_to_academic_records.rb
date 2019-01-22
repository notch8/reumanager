class AddTribalToAcademicRecords < ActiveRecord::Migration
  def change
    add_column :academic_records, :tribal, :string
  end
end
