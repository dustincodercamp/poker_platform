class CreateQuizStatements < ActiveRecord::Migration[5.0]
  def change
    create_table :quiz_statements do |t|
      t.text :statement
      t.text :question
      t.text :answer
      t.references :quiz
      t.integer :order

      t.timestamps
    end
  end
end
