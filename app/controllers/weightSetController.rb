class WeightSetController < ApplicationController
  def index
    @weightSets = WeightSet.all
  end

  def show
    @weightSets = WeightSet.find(params[:id])
    respond_to do |format|
      format.json {render json: @weightSet}
    end
  end
end
