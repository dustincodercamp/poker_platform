class ExercisesController < ApplicationController
  def index
    @lesson = Lesson.find(params[:lesson_id])
    @exercises = @lesson.exercises
  end
end
