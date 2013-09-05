class User < ActiveRecord::Base
  has_many :skills, through: :proficiencies
  has_many :proficiencies

  def proficiency_for(skill)
    user_id = self.id
    skill_id = skill.id
    proficiencies_array = Proficiency.where(user_id: user_id, skill_id: skill_id)
    proficiencies_array.first.rating
  end

  def set_proficiency_for(skill, number)
    user_id = self.id
    skill_id = skill.id
    proficiencies_array = Proficiency.where(user_id: user_id, skill_id: skill_id)
    proficiencies_array.first.rating = number
  end

end
