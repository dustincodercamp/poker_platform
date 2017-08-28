class CreateSections < ActiveRecord::Migration[5.0]
  def change
    create_table :sections do |t|
      t.references :contentable, polymorphic: true
      t.references :lesson, foreign_key: true
      t.integer :order

      t.timestamps
    end
  end
end
