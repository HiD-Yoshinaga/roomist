class CoordinatesController < ApplicationController
  before_action :move_to_index, except: [:index, :show]
  before_action :set_item, only: [:edit, :show, :update, :destroy]

  def index
    @coordinates = Coordinate.all.order('created_at DESC')
  end

  def new
    @coordinate = Coordinate.new
  end

  def create
    @coordinate = Coordinate.new(coordinate_params)
    if @coordinate.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def coordinate_params
    params.require(:coordinate).permit(:coordinate_info, images: []).merge(user_id: current_user.id)
  end

  def set_item
    @item = Coordinate.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
