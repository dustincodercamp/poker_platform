class ExercisesController < ApplicationController
  def index
    @lesson = Lesson.find(params[:lesson_id])
    @next_lesson = Lesson.find_by(order: @lesson.order + 1)
    @exercises = @lesson.exercises
  end
end
