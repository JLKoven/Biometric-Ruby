class SetsController < ApplicationController
  def index
    @sets = Set.all
  end

  def show
    @sets = Set.find(params[:id])
    respond_to do |format|
      format.json {render json: @set}
    end
  end
end
