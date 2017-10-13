class ExerciseSessionController < ApplicationController
  def index
    @exerciseSessions = ExerciseSession.all
  end

  def show
    @exerciseSessions = ExerciseSession.find(params[:id])
    respond_to do |format|
      format.json {render json: @exerciseSession}
    end
  end
end
