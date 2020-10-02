class Api::V1::OrdersController < ApplicationController

  def index
      @orders = Order.where(member_id: params[:user_id])
      render json: @orders
  end

  def create
    @user = User.find(params[:user_id])
    @order = Order.create!(
      member_id: params[:user_id],
      plan_membership_id: @user.plan_membership_id,
      order_date: Date.today(),
      shipping_cost: 0,
      total_cost: 0,
      tax: 0
    )

    if @order.checkout
      render json: {order: @order, order_items: @order_items}
    else
      render json: @order.errors.full_messages
    end
  end

  private

  def order_params
    params.require(:order).permit(:member_id, :plan_membership_id, :total_cost, :tax, :order_date, :shipping_cost)
  end

end
