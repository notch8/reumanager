class AddMentorThreeToApplicants < ActiveRecord::Migration
  def change
    add_column :applicants, :mentor3, :string
  end
end
