class CoordinateController < ApplicationController

  def index
    @coordinate = Coordinate.all.order('created_at DESC')
  end

  def new
    @coordinate = Coordinate.new
  end

  def create
    @coordinate = Coordinate.new(item_params)
    if @coordinate.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def coordinate_params
    params.require(:coordinate).premit(:coordinate_info, :images: []).merge(user_id: current_user.id)
  end
end