class ChangeColumnNameinReviewTable < ActiveRecord::Migration[5.2]
  def change
    rename_column :reviews, :star_rating, :rating
  end
end
