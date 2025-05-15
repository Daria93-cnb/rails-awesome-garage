class FavouritesController < ApplicationController
  before_action :set_car, only: [:create]
  def index
    @favourites = Favourite.all
  end

  def create
    unless Favourite.exists?(car: @car)
      @favourite = Favourite.new(car: @car)
      if @favourite.save
        redirect_to car_path(@car), notice: "Added to your garage!"
      else
        redirect_to car_path(@car), alert: "Could not add to garage."
      end
    else
      redirect_to car_path(@car), alert: "Already in your garage!"
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, notice: "Removed from garage."
  end

  private

  def set_car
    @car = Car.find(params[:car_id])
  end
end
