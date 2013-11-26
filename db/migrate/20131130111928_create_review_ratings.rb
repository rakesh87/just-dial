class CreateReviewRatings < ActiveRecord::Migration
  def change
    create_table :review_ratings do |t|
      t.text :review
      t.integer :category_id
      t.integer :city_id
      t.integer :rating
      t.integer :user_id

      t.timestamps
    end
  end
end
