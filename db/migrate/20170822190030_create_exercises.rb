class CreateExercises < ActiveRecord::Migration[5.0]
  def change
    create_table :exercises do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.boolean :live

      t.timestamps
    end
  end
end
