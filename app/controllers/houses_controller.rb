class HousesController < ApplicationController
  def index
    houses = House.all
    render json: houses
  end

  def show
    house = House.find_by(id: params[:id])
    if (house)
      render json: house.as_json(include: { reservations: { only: %i[id starting_date ending_date] } })
    else
      render json: {
        status: 404,
        errors: ['House does not exist']
      }
    end
  end

  def create
    house = House.new(house_params)
    if house.save
      render json: house, status: :created
    else
      render json: {
        status: 404,
        errors: house.errors
      }
    end
  end

  def destroy
    house = House.find(params[:id])
    house.destroy
    head :no_content
  end

  private

  def house_params
    params.require(:house).permit(:house_name, :address, :rooms, :beds, :picture, :price_by_night, :description)
  end
end
