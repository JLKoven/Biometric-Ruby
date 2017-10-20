class ExerciseSessionController < ApplicationController
  def index
    @exercise_sessions = ExerciseSession.all
  end

  def show
    @exercise_sessions = ExerciseSession.find(params[:id])
    respond_to do |format|
      format.json {render json: @exercise_session}
    end
  end
end
