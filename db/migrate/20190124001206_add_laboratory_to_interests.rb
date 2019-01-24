class AddLaboratoryToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :laboratory, :text
  end
end
