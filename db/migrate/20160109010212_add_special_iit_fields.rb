class AddSpecialIitFields < ActiveRecord::Migration
  def change
    add_column :applicants, :essay_1, :text
    add_column :applicants, :essay_2, :text
  end
end
