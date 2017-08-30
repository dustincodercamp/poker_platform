class AddStatementToExercises < ActiveRecord::Migration[5.0]
  def change
    add_column :exercises, :statement, :text
  end
end
