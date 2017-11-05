class GeneralStatsController < ApplicationController
  before_action :set_general_stat, only: [:show, :edit, :update, :destroy]

  # GET /general_stats
  # GET /general_stats.json
  def index
#    @general_stats = GeneralStat.all
@general_stats = GeneralStat.where(user_id: current_user.id)
  end

  # GET /general_stats/1
  # GET /general_stats/1.json
  def show
  end

  # GET /general_stats/new
  def new
    @general_stat = GeneralStat.new
  end

  # GET /general_stats/1/edit
  def edit
  end

  # POST /general_stats
  # POST /general_stats.json
  def create
    @general_stat = GeneralStat.new(general_stat_params)
    @general_stat.user_id = current_user.id

    respond_to do |format|
      if @general_stat.save
        format.html { redirect_to @general_stat, notice: 'General stat was successfully created.' }
        format.json { render :show, status: :created, location: @general_stat }
      else
        format.html { render :new }
        format.json { render json: @general_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /general_stats/1
  # PATCH/PUT /general_stats/1.json
  def update
    respond_to do |format|
      if @general_stat.update(general_stat_params)
        format.html { redirect_to @general_stat, notice: 'General stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @general_stat }
      else
        format.html { render :edit }
        format.json { render json: @general_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /general_stats/1
  # DELETE /general_stats/1.json
  def destroy
    @general_stat.destroy
    respond_to do |format|
      format.html { redirect_to general_stats_url, notice: 'General stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_general_stat
      @general_stat = GeneralStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def general_stat_params
      params.require(:general_stat).permit(:date, :weight, :weight_avg, :cal, :user_id)
    end
end
