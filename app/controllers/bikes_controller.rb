class BikesController < ApplicationController
  def index
    @bikes = Bike.all
    render :index
  end

  def new
    @bike = Bike.new
    render :new
  end

  def create
    @bike = Bike.create(
      name: params[:name],
      color: params[:color],
      price: params[:price],
    )
    render :show
  end
  
  def show
    @bike = Bike.find_by(id: params[:id])
    render :show
  end
  
end
