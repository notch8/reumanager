class AddStudentToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :student, :string
  end
end
