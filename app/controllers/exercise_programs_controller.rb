class ExerciseProgramsController < ApplicationController
  before_action :set_exercise_program, only: [:show, :edit, :update, :destroy]
  before_action :set_page, only: [:index]

  # GET /exercise_programs
  # GET /exercise_programs.json
  def index
    @exercise_programs = ExerciseProgram.where('exercise_programs.user_id = ?', current_user.id).limit(10).offset(@page.to_i * 10)
  end

  # GET /exercise_programs/1
  # GET /exercise_programs/1.json
  def show
  end

  # GET /exercise_programs/new
  def new
    @exercise_program = ExerciseProgram.new
  end

  # GET /exercise_programs/1/edit
  def edit
  end

  # POST /exercise_programs
  # POST /exercise_programs.json
  def create
    @exercise_program = ExerciseProgram.new(exercise_program_params)
    @exercise_program.user_id = current_user.id

    respond_to do |format|
      if @exercise_program.save
        format.html { redirect_to @exercise_program, notice: 'Exercise program was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_program }
      else
        format.html { render :new }
        format.json { render json: @exercise_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_programs/1
  # PATCH/PUT /exercise_programs/1.json
  def update
    respond_to do |format|
      if @exercise_program.update(exercise_program_params)
        format.html { redirect_to @exercise_program, notice: 'Exercise program was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_program }
      else
        format.html { render :edit }
        format.json { render json: @exercise_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_programs/1
  # DELETE /exercise_programs/1.json
  def destroy
    @exercise_program.destroy
    respond_to do |format|
      format.html { redirect_to exercise_programs_url, notice: 'Exercise program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_program
      @exercise_program = ExerciseProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_program_params
      params.require(:exercise_program).permit(:name, :description, :user_id)
    end

    def set_page
      @page = params[:page] || 0
    end

end
