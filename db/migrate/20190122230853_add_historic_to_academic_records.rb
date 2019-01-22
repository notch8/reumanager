class AddHistoricToAcademicRecords < ActiveRecord::Migration
  def change
    add_column :academic_records, :historic, :string
  end
end
