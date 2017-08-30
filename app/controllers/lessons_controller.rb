class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all.order(:order)
  end

  def show
    @lesson = Lesson.find(params[:id])
    @next_lesson = Lesson.find_by(order: @lesson.order + 1)
  end
end
