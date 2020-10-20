class DeleteColumnFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :date_read
  end
end
