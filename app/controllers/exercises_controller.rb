class ExercisesController < ApplicationController
  def show
    @exercise = Exercise.find(params[:id])
    respond_to do |format|
      format.js
    end
  end
end
