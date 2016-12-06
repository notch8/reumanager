class AddAdditionalQuestionsToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :additional_info, :text
    add_column :applicants, :found_us, :string
  end
end
