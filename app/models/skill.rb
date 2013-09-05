class Skill < ActiveRecord::Base
  has_many :users, through: :proficiencies
  has_many :proficiencies
  validates :name, uniqueness: true

  def user_with_proficiency(number)
    matched_rating = Proficiency.where(skill_id: self.id, rating: number).first
    User.find(matched_rating.user_id)
  end

end
