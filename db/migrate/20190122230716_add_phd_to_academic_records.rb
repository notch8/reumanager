class AddPhdToAcademicRecords < ActiveRecord::Migration
  def change
    add_column :academic_records, :phd, :string
  end
end
