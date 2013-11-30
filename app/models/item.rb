class Item < ActiveRecord::Base
  attr_accessible :detail, :name

  validates :detail, :name, presence: true

  def avg_ratings
    return "no ratings available" if review_ratings.length <= 0
    review_ratings.collect(&:rating).sum.to_f/review_ratings.length
  end

  def review_ratings
    ReviewRating.where(item_id: self.id)
  end
end
