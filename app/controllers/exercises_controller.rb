class ExercisesController < ApplicationController
  def index
    @lesson = Lesson.find(params[:lesson_id])
    @next_lesson = Lesson.find_by(order: @lesson.order + 1)
    @exercises = @lesson.exercises
  end

  def answer
    @answer_option = AnswerOption.find(params[:answer_id])
    @question_id = params[:question_id]

    if @answer_option.correct
      current_user.chip_count += 100
    else
      current_user.chip_count -= 20
    end

    current_user.save
  end
end
