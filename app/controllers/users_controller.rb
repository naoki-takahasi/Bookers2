class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @image = @user.user.find(params[:id])
  end

  def edit
  end
end
