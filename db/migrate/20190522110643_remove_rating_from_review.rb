class RemoveRatingFromReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :review, :text
  end
end
