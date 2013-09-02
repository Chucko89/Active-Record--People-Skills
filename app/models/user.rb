class User < ActiveRecord::Base
  has_many :skills, through: :proficiencies
  has_many :proficiencies
end
