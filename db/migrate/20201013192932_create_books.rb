class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.string :description, null: false
      t.integer :isbn, null: false, unique: true
      t.datetime :date_published, null: false
      t.datetime :date_read, null: false
      t.timestamps
    end
    add_index :books, :isbn, unique: true 
  end
end
