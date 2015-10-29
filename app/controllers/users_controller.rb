class UsersController < ApplicationController
  expose(:user)

  def show
  end

  def edit
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :nick, :email)
  end
end
