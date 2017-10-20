class WeightSetController < ApplicationController
  def index
    @weight_sets = WeightSet.all
  end

  def show
    @weight_sets = WeightSet.find(params[:id])
    respond_to do |format|
      format.json {render json: @weight_set}
    end
  end
end
