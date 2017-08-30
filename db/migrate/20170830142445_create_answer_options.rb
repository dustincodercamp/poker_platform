class CreateAnswerOptions < ActiveRecord::Migration[5.0]
  def change
    create_table :answer_options do |t|
      t.references :question, foreign_key: true
      t.text :statement
      t.boolean :correct
      t.text :explanation

      t.timestamps
    end
  end
end
