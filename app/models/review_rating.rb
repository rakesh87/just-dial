class ReviewRating < ActiveRecord::Base
  attr_accessible :rating, :review, :user_id, :item_id
  belongs_to :user

  validates :review, :rating, presence: true

  def item
    Item.find(self.item_id)
  end
end
