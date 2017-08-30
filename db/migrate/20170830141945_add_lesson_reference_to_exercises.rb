class AddLessonReferenceToExercises < ActiveRecord::Migration[5.0]
  def change
    add_reference :exercises, :lesson, foreign_key: true
  end
end
