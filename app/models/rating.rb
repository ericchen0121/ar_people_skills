class Rating < ActiveRecord::Base
	belongs_to :user
	belongs_to :skill
	before_create :set_default_rating

  def set_default_rating
  	self.rating = 0
  end
end
