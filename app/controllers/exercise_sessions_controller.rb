class ExerciseSessionsController < ApplicationController
  def index
    @exercise_sessions = ExerciseSession.all
  end

  def show
    @exercise_session = ExerciseSession.find(params[:id])
  end
end
