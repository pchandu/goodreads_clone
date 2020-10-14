class CreateUserBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :user_books do |t|
      t.integer :book_id, null: false
      t.integer :user_id, null: false
      t.boolean :reviewed?, null: false, default: false 
      t.boolean :read?, null: false, default: false 
      t.timestamps
    end
  end
end
