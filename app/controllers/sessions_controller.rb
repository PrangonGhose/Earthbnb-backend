class SessionsController < ApplicationController
  def create
    @user = User.find_by(username: session_params[:username])

    if @user
      render json: {
        logged_in: true,
        user: @user
      }
    else
      render json: {
        logged_in: false,
        status: 401,
        errors: { username: ['No such user, please try again'] }
      }
    end
  end

  def destroy
    render json: {
      status: 200,
      logged_out: true
    }
  end

  private

  def session_params
    params.require(:user).permit(:username, :errors)
  end
end
