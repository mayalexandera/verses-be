class Api::V1::CartItemsController < ApplicationController
  before_action :set_cart
  before_action :set_cart_item, except: :new

  def create
    if @cart_item
      @cart_item.increment
    else
      @cart_item = CartItem.create!(
      cart_id: @cart.id,
      product_id: params[:product_id],
      size_id: params[:size_id],
      size_string: params[:size]
      )
    end
    render json: { cart_item: @cart_item, cart: @cart }
  end

  def update
    @cart_item.update_cart_item(
        @cart,
        params[:type],
        params[:value],
        params[:product_id]
    )
    
    render json: { cart_item: @cart_item, cart: @cart }
  end


  def destroy
    @cart_item.destroy!
    render json: { cart_items: @cart.cart_items, cart_total: @cart.create_price_string }
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:member_id, :product_id, :size_id, :size_string, :cart_id, size_attributes: [:size], cart_attributes: [:id])
  end

  def set_cart
    @cart = Cart.find_by(member_id: params[:user_id])
  end

  def set_cart_item
    if params[:cart_item_id]
      @cart_item = CartItem.find(params[:cart_item_id])
    else
      @cart_item = @cart.cart_items.find_by(product_id: params[:product_id], size_id: params[:size_id])
    end
  end
  
end