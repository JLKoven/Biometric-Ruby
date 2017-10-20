class WeightSetsController < ApplicationController
  def index
    @weight_sets = WeightSet.all
  end

  def show
    @weight_set = WeightSet.find(params[:id])
  end
end
