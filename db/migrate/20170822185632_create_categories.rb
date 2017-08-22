class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.references :lesson, foreign_key: true
      t.string :name
      t.text :description
      t.integer :order

      t.timestamps
    end
  end
end
