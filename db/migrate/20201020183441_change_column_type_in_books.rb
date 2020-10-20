class ChangeColumnTypeInBooks < ActiveRecord::Migration[5.2]
  def change
    change_column :books, :date_published, :string
  end
end
