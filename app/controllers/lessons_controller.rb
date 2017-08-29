class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all.order(:order)
  end

  def show
    @lesson = Lesson.find(params[:id])
  end
end
