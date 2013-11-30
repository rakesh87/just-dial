class ReviewRating < ActiveRecord::Base
  attr_accessible :rating, :review, :user_id, :item_id
  belongs_to :item
end
