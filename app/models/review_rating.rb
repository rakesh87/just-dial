class ReviewRating < ActiveRecord::Base
  attr_accessible :rating, :review, :user_id, :item_id
  belongs_to :user

  validates :review, :rating, presence: true
  validates_numericality_of :rating, only_integer: true,
    greater_than_or_equal_to: 1,
    less_than_or_equal_to: 5,
    :message => "can only be whole number between 1 and 5.", if: ->{ self.rating.present?}

  def item
    Item.find(self.item_id)
  end
end
