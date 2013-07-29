class Skill < ActiveRecord::Base
	has_many :ratings
	has_many :users, through: :ratings
	validates_uniqueness_of :name, scope: :context

	def user_with_proficiency(rating)
		user_id = self.ratings.find_by_rating(rating).user_id
		User.find(user_id)
	end
end
