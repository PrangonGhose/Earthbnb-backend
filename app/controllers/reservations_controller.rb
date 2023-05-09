class ReservationsController < ApplicationController
  def index
    @user = User.find_by(username: params[:username])
    reservations = @user.reservations
    render json: reservations
  end

  def create
    reservation = Reservation.new(reservation_params)
    if reservation.save
      render json: reservation, status: :created
    else
      render json: reservation.errors, status: :unprocessable_entity
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :house_id, :starting_date, :ending_date)
  end
end
