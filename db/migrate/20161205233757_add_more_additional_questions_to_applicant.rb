class AddMoreAdditionalQuestionsToApplicant < ActiveRecord::Migration
  def change
    add_column :applicants, :underrepresented_eligibility, :text
    add_column :applicants, :past_experience, :text
    add_column :applicants, :other_funds, :text
  end
end
