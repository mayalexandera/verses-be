class Api::V1::CartsController < ApplicationController
  before_action :set_cart, except: [:create]
  before_action :create_price_string

  def show
    if @cart
      render json:{ cart: @cart, cart_items: @cart.cart_items }
    else
      render json: { status: 401, message: 'could not locate cart.' }
    end
  end

  def create
    cart = Cart.new(cart_params)
    if cart.save
      render json: cart
    else
      render json: { status: 401, message: 'Unable to create cart.' }
    end
  end

  def refresh
    @cart.cart_items.each { |c| c.destroy }
    render json: @cart
  end


  private
  def set_cart
    @cart = Cart.find_by(member_id: params[:user_id])
  end

  def create_price_string
    @cart.create_price_string
  end

  def cart_params
    params.require(:cart).permit(:member_id)
  end
  
end