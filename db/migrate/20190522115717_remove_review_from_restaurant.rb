class RemoveReviewFromRestaurant < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :review, :text
  end
end
