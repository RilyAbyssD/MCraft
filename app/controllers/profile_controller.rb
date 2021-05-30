class ProfileController < ApplicationController
  def index
    @user = User.order(created_at: :desc).all
  end

  def new
    @user = User.find(params[:id])
  end

  def show
  end

  def edit
  end
end
