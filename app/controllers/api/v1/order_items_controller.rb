class Api::V1::OrderItemsController < ApplicationController
  
  def index
    order_items = OrderItem.all
    render json: order_items
  end
  
  def show 
    order_item = OrderItem.find(params[:id])
    render json: order_item
  end

  def create
    order = Order.find(params[:order])
    new_order_item = OrderItem.create(name: params[:name], price: params[:price], quantity: params[:quantity], order: order)
    render json: new_order_item
  end
end