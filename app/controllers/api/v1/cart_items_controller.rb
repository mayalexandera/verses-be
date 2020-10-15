class Api::V1::CartItemsController < ApplicationController

  def create
    # @cart = Cart.find_by(member_id: params[:user_id])
       @cart = User.find(params[:user_id]).cart
    @product = Product.find_by(id: params[:product_id])
    @size = Size.find_by(product_id: @product.id, size: params[:size])
    item = @cart.cart_items.find_by(size_id: @size.id)
   if item
    item.increment
   else 
    @cart_item = CartItem.create!(
      cart_id: @cart.id,
      product_id: @product.id,
      size_id: @size.id
    )
   end
    render json: @cart_item
  end

  def destroy
    @cart = Cart.find_by(member_id: params[:user_id])
    @cart_item = @cart.cart_items.find_by(id: params[:id])
    if @cart_item 
      @cart_item.destroy!
      render json: 'success'
    else
      render json: 'no success'
    end
  end

  private 
  def cart_item_params
    params.require(:cart_item).permit(:member_id, :product_id, :size_id, :cart_id, size_attributes: [:size], cart_attributes: [:id])
  end
  
end