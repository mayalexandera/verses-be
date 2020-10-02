class Api::V1::OrderItemsController < ApplicationController

  def create
    @order_item = OrderItem.create(order_item_params)
    if @order_item.save
      render json: @order_item
    else
      render json: @order_item.errors.full_messages
    end
  end

  private
  def order_item_params
    params.require(:order_item).permit(:product_id, :size_id, :order_id)
  end

end
