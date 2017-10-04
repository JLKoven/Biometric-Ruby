class DateItemController < ApplicationController
  def index
    @dateItems = DateItem.all
  end

  def show
    @dateItem = DateItem.find(params[:id])
    respond_to do |format|
      format.json {render json: @dateItem}
    end
  end
end
