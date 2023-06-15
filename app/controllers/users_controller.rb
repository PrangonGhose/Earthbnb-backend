class UsersController < ApplicationController
  def create
    @user = User.new(user_params)

    # if User.exists?(username: @user.username)
    #   render json: {
    #     status: :unprocessable_entity,
    #     errors: { username: ['This user already exists, try a different username'] }
    #   }
    if @user.save
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
