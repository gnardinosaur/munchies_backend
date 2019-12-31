class Api::V1::OrdersController < ApplicationController

  def index
    orders = Order.all
    render json: orders
  end

  def show 
    order = Order.find(params[:id])
    render json: order
  end

  def create
    user = User.find(params[:user])
    new_order = Order.create(total: params[:total], user: user)
    render json: new_order
  end

end
