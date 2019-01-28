class AddFieldsToAcademic < ActiveRecord::Migration
  def change
    add_column :academic_records, :phd, :string
    add_column :academic_records, :historic, :string
    add_column :academic_records, :tribal, :string
    add_column :academic_records, :community, :string
  end
end
