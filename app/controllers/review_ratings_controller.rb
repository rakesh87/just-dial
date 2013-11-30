class ReviewRatingsController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @review_rating = ReviewRating.new
  end

  def create
    @review_rating = ReviewRating.new(params[:review_rating])
    @item = Item.find(@review_rating.item_id)
    @review_rating.user_id = current_user.id
    if @review_rating.save
      redirect_to('/', notice: "your review successfully submited")
    else
      render 'new'
    end
  end
end
