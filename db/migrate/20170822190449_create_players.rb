class CreatePlayers < ActiveRecord::Migration[5.0]
  def change
    create_table :players do |t|
      t.references :exercise, foreign_key: true
      t.string :name
      t.string :card1
      t.string :card2

      t.timestamps
    end
  end
end
