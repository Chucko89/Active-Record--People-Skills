class Skill < ActiveRecord::Base
  has_many :users, through: :proficiencies
  has_many :proficiencies
  # validates :name, uniqueness: true

  def proficiency_for(args)
    skills.find_by_name(args)
  end
end
