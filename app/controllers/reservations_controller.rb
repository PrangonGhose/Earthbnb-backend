class ReservationsController < ApplicationController
  def index
    @user = User.find_by(username: params[:username])
    reservations = @user.reservations
    render json: reservations.as_json(include: { house: { only: %i[house_name] } })
  end

  def create
    reservation = Reservation.new(reservation_params)
    if reservation.save
      render json: {
        status: :created,
        json: reservation
      }
    else
      render json: {
        status: :unprocessable_entity,
        errors: reservation.errors
      }
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:user_id, :house_id, :starting_date, :ending_date)
  end
end
