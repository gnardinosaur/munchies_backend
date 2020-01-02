class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
    render json: users
  end

  def show 
    user = User.find(params[:id])
    render json: user
  end

  def create 
    user = User.find_or_create_by(username: params[:username])
    render json: user
  end

  def update 
    user = User.find(params[:id])
    user.update(username: params[:userObj][:username], email: params[:userObj][:email])
    render json: user
  end

  def order_items
    user = User.find(params[:id])
    user_items = user.order_items
    render json: user_items
  end

end
