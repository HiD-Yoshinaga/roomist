class CoordinateController < ApplicationController

  def index
    @coordinate = Coordinate.all.order('created_at DESC')
  end

end
