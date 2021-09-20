class UsersController < ApplicationController

  def index
    @user = User.order(created_at: :desc).all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
  end

end
