class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all.order(:order)
  end
end
