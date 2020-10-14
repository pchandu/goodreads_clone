class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false
      t.integer :star_rating, null: false
      t.string :body, null: false
      t.timestamps
    end
    add_index :reviews, :book_id, unique: true
  end
end
