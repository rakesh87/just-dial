class UpdateRevieRateTable < ActiveRecord::Migration
  def change
    add_column :review_ratings, :item_id, :integer
  end
end
