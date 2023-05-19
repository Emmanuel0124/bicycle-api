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
      name: parmas[:bike][:name],
      color: params[:bike][:color],
      price: params[bike][:price],
    )
    redirect_to "/bikes"
  end
  
  
end
