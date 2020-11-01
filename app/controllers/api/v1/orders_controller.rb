class Api::V1::OrdersController < ApplicationController

  def index
      orders = Order.where(member_id: params[:user_id])
      render json: orders, include: :order_items
  end

  def create
    order = Order.create!(
      member_id: params[:user_id],
      plan_membership_id: params[:plan_membership_id],
      order_date: Date.today(),
      number: Faker::Number.number(digits: 8)
    )
    if order.checkout
      render json: { order: order, order_items: order.order_items }
    else
      render json: order.errors.full_messages
    end
  end

  private

  def order_params
    params.require(:order).permit(
      :member_id,
      :plan_membership_id,
      :total_cost,
      :tax,
      :order_date,
      :ordered_date,
      :shipping_cost
    )
  end

end
