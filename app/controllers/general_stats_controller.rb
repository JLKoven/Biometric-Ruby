class GeneralStatsController < ApplicationController
  def index
    @general_stats = GeneralStat.all
  end

  def show
    @general_stat = GeneralStat.find(params[:id])
  end
end
