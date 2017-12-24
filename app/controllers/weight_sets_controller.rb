class WeightSetsController < ApplicationController
  before_action :set_weight_set, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /weight_sets
  # GET /weight_sets.json
  def index
    @weight_sets = WeightSet.includes(:exercise_type)
      .joins(:exercise_session)
      .where('exercise_sessions.user_id = ?', current_user.id).limit(5).offset(5)

    #don't do this, this is silly
#     @exercise_sessions = ExerciseSession.where(user: current_user)
#     @weight_sets = []
#     @exercise_sessions.each do |exercise_session|
# #      for each weoghtgset in exercise_session.weight_sets {\
# #        @weight_sets.push(weoghtgset.this)
# #      }
#         @weight_sets.push(exercise_session.weight_sets)
#     end
#     @weight_sets.flatten!
#     #binding.pry
  end


  #SELECT weight_set FROM weight_sets WHERE weight_ == current_user.id)

  # GET /weight_sets/1
  # GET /weight_sets/1.json
  def show
  end

  # GET /weight_sets/new
  def new
    @weight_set = WeightSet.new
  end

  # GET /weight_sets/1/edit
  def edit
  end

  # POST /weight_sets
  # POST /weight_sets.json
  def create
#    binding.pry
    @weight_set = WeightSet.new(weight_set_params)

    respond_to do |format|
      if @weight_set.save
        format.html { redirect_to @weight_set, notice: 'Weight set was successfully created.' }
        format.json { render :show, status: :created, location: @weight_set }
      else
        format.html { render :new }
        format.json { render json: @weight_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_sets/1
  # PATCH/PUT /weight_sets/1.json
  def update
    respond_to do |format|
      if @weight_set.update(weight_set_params)
        format.html { redirect_to @weight_set, notice: 'Weight set was successfully updated.' }
        format.json { render :show, status: :ok, location: @weight_set }
      else
        format.html { render :edit }
        format.json { render json: @weight_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_sets/1
  # DELETE /weight_sets/1.json
  def destroy
    @weight_set.destroy
    respond_to do |format|
      format.html { redirect_to weight_sets_url, notice: 'Weight set was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_set
      @weight_set = WeightSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_set_params
      params.require(:weight_set).permit(:weight, :reps, :exercise_session_id)
    end#HAHAHAHAHAHA
end
