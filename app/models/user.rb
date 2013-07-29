class User < ActiveRecord::Base
	has_many :ratings
	has_many :skills, through: :ratings

  def proficiency_for(skill)
  	self.ratings.find_by_skill_id(skill.id).rating
  end

  def set_proficiency_for(skill, num)
  	skill_to_set = self.ratings.find_by_skill_id(skill.id)
  	skill_to_set.rating = num
  	skill_to_set.save
  end
end
