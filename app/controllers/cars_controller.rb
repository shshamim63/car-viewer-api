class CarsController < ApplicationController
  def create
    car = Car.create!(modelname: params[:modelname],
                      fee: params[:fee],
                      payable: params[:payable],
                      duration: params[:duration],
                      representative: params[:representative],
                      description: params[:description])
    if car
      render json: {
        status: :created,
        car: car
      }
    else
      render json: { status: 500 }
    end
  end

  def index
    cars = Car.all
    render json: cars
  end

  def show
    car = Car.find(params[:id])
    if car
      render json: car
    else
      render json: {
        status: 404
      }
    end
  end
end
