class Interest < ActiveRecord::Base
    RESEARCH_INTERESTS = [
    'Ruth Curry',
    'Samantha de Putron',
    'Gretchen Goodbody-Gringley',
    'Damian Grundle',
    'Eric Hochberg',
    'Amy Maas',
    'Tim Noyes',
    'Rachel Parsons',
    'Yvonne Sawall'
  ]

  attr_accessible :laboratory, :cpu_skills, :leadership_experience, :programming_experience,:research_experience, :research_interest_1, :research_interest_2, :research_interest_3, :bios_interest, :education_background, :career_goals, :extra, :reu_experience, :hear_about_reu, :email_permission, :reu_experience_content
  belongs_to :applicant

  validates :leadership_experience, presence: true
  validates :programming_experience, presence: true
  validates :laboratory, presence: true
  validates :bios_interest, presence: true
  validates :education_background, presence: true
  validates :career_goals, presence: true
  validates :extra, presence: true
  validates :reu_experience, presence: true
  validates :hear_about_reu, presence: true
  validates :email_permission, presence: true
  validates :research_experience, presence: true
  validates :research_interest_1, presence: true
  validates :research_interest_2, presence: true
  validates :research_interest_3, presence: true

  def to_s
    "#{self.interest}"
  end

end
