class UsersController < ApplicationController
  def index
    users = User.all
    render json: users
  end

  def create
    @user = User.new(user_params)
    
    if User.exists?(username: @user.username)
      render json: { errors: { username: ['This user already exists, try a different username']} }, status: :unprocessable_entity
    elsif @user.save
      render json: { user: @user, status: :created }
    else
      render json: {
        status: 500,
        errors: @user.errors
      }
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
