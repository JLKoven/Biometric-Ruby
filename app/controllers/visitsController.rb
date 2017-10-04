class VisitsController < ApplicationController
  def index
    @visits = Visit.all
  end

  def show
    @visits = Visit.find(params[:id])
    respond_to do |format|
      format.json {render json: @visit}
    end
  end
end
