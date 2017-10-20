class GeneralStatController < ApplicationController
  def index
    @general_stats = GeneralStat.all
  end

  def show
    @general_stats = GeneralStat.find(params[:id])
    respond_to do |format|
      format.json {render json: @general_stat}
    end
  end
end
