class ExerciseSessionsController < ApplicationController
  before_action :set_exercise_session, only: [:show, :edit, :update, :destroy]
  before_action :set_page, only: [:index]
#make sure this works if nobody is logged in
  before_action :authenticate_user!

  # GET /exercise_sessions
  # GET /exercise_sessions.json
  def index
    @exercise_sessions = ExerciseSession.where('exercise_sessions.user_id = ?', current_user.id).limit(10).offset(@page.to_i * 10)
  end

  # GET /exercise_sessions/1
  # GET /exercise_sessions/1.json
  def show
    #binding.pry
  end

  # GET /exercise_sessions/new
  def new
    @exercise_session = ExerciseSession.new
  end

  # GET /exercise_sessions/1/edit
  def edit
  end

  # POST /exercise_sessions
  # POST /exercise_sessions.json
  def create
    @exercise_session = ExerciseSession.new(exercise_session_params)
    @exercise_session.user_id = current_user.id

    #binding.pry


    respond_to do |format|
      if @exercise_session.save
        format.html { redirect_to @exercise_session, notice: 'Exercise session was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_session }
      else
        format.html { render :new }
        format.json { render json: @exercise_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_sessions/1
  # PATCH/PUT /exercise_sessions/1.json
  def update
    respond_to do |format|
      if @exercise_session.update(exercise_session_params)
        format.html { redirect_to @exercise_session, notice: 'Exercise session was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_session }
      else
        format.html { render :edit }
        format.json { render json: @exercise_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_sessions/1
  # DELETE /exercise_sessions/1.json
  def destroy
    @exercise_session.destroy
    respond_to do |format|
      format.html { redirect_to exercise_sessions_url, notice: 'Exercise session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_session
      @exercise_session = ExerciseSession.find(params[:id])
      #      @exercise_session = ExerciseSession.find(params[:id], :limit => 25)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_session_params
      params.require(:exercise_session).permit(:date, :user_id, :exercise_type_id, :exercise_program_id)
    end

    def set_page
      @page = params[:page] || 0
    end

end
