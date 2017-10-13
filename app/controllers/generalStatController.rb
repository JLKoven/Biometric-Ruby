class GeneralStatController < ApplicationController
  def index
    @generalStats = GeneralStat.all
  end

  def show
    @generalStats = GeneralStat.find(params[:id])
    respond_to do |format|
      format.json {render json: @generalStat}
    end
  end
end
