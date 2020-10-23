class RemoveIndexFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_index :reviews, name: "index_reviews_on_book_id"
  end
end
