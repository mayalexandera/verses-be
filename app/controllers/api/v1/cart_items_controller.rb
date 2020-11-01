class Api::V1::CartItemsController < ApplicationController

  def create
    cart = Cart.find_or_create_by(member_id: params[:user_id])
    product = Product.find_by(id: params[:product_id])
    size = Size.find_by(product_id: product.id, size: params[:size])
    item = cart.cart_items.find_by(size_id: size.id)

    if item
      item.increment
    else
      cart_item = CartItem.create!(
      cart_id: cart.id,
      product_id: product.id,
      size_id: size.id
      )
    end
    
    cart.create_price_string
    render json: {cart_item: cart_item, cart: cart}
  end

  def update
    cart_item = CartItem.find(params[:cart_item_id])
    @cart = Cart.find_by(member_id: params[:user_id])
    if params[:type] === "size"

      @size = Size.find_by(
        product_id: cart_item.product_id,
        size: params[:size]
      )

    cart_item.update_cart_item(@size, @cart)
      
    end

    if params[:type] === 'quantity'
      
      size = Size.find_by(product_id: params[:product_id])
      cart_item.update!(quantity: params[:quantity])
      @cart.create_price_string

    end

    render json: { cart_item: cart_item, cart: @cart }

  end

  def destroy
    cart = Cart.find_by(member_id: params[:user_id])
    
    cart_item = cart.cart_items.find_by(id: params[:id])
    
    cart_item.destroy!
    cart.create_price_string
    render json:{ cart_items: cart.cart_items, cart_total: cart.total_cost_string}
  end

  private 
  def cart_item_params
    params.require(:cart_item).permit(:member_id, :product_id, :size_id, :cart_id, size_attributes: [:size], cart_attributes: [:id])
  end
  
end