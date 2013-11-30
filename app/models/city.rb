class City < ActiveRecord::Base
  attr_accessible :name
  has_many :review_ratings
end
