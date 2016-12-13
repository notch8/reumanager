class AddAdditionalQuestionsToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :military, :string
    add_column :applicants, :first_gen_college, :string
    add_column :applicants, :additional_info, :text
    add_column :applicants, :found_us, :string
    add_column :applicants, :previous_research, :string
    add_column :applicants, :top_choices, :text
    add_column :applicants, :permission_to_share, :boolean
  end
end
