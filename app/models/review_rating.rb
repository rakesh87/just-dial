class ReviewRating < ActiveRecord::Base
  attr_accessible :category_id, :city_id, :rating, :review, :user_id
  belongs_to :category
end
