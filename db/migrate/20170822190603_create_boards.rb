class CreateBoards < ActiveRecord::Migration[5.0]
  def change
    create_table :boards do |t|
      t.references :exercise, foreign_key: true
      t.string :card1
      t.string :card2
      t.string :card3
      t.string :turn
      t.string :river

      t.timestamps
    end
  end
end
