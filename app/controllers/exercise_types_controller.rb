class ExerciseTypesController < ApplicationController
  before_action :set_exercise_type, only: [:show, :edit, :update, :destroy]

  # GET /exercise_types
  # GET /exercise_types.json
  def index
    @exercise_types = ExerciseType.all
  end

  # GET /exercise_types/1
  # GET /exercise_types/1.json
  def show
  end

  # GET /exercise_types/new
  def new
    @exercise_type = ExerciseType.new
  end

  # GET /exercise_types/1/edit
  def edit
  end

  # POST /exercise_types
  # POST /exercise_types.json
  def create
    @exercise_type = ExerciseType.new(exercise_type_params)
    @exercise_type.user_id = current_user.id

    respond_to do |format|
      if @exercise_type.save
        format.html { redirect_to @exercise_type, notice: 'Exercise type was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_type }
      else
        format.html { render :new }
        format.json { render json: @exercise_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_types/1
  # PATCH/PUT /exercise_types/1.json
  def update
    respond_to do |format|
      if @exercise_type.update(exercise_type_params)
        format.html { redirect_to @exercise_type, notice: 'Exercise type was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_type }
      else
        format.html { render :edit }
        format.json { render json: @exercise_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_types/1
  # DELETE /exercise_types/1.json
  def destroy
    @exercise_type.destroy
    respond_to do |format|
      format.html { redirect_to exercise_types_url, notice: 'Exercise type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_type
      @exercise_type = ExerciseType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_type_params
      params.require(:exercise_type).permit(:name, :description, :user_id)
    end
end
