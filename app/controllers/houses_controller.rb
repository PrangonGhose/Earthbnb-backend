class HousesController < ApplicationController
  def index
    houses = House.all
    render json: houses
  end

  def show
    house = House.find(params[:id])
    render json: house.as_json(include: { reservations: { only: %i[id starting_date ending_date] } })
  end

  def create
    house = House.new(house_params)
    if house.save
      render json: house, status: :created
    else
      render json: house.errors, status: :unprocessable_entity
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
