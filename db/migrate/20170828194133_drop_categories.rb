class DropCategories < ActiveRecord::Migration[5.0]
  def change
    remove_column :exercises, :category_id
    drop_table :categories
  end
end
