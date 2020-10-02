class Api::V1::CartsController < ApplicationController
  before_action :set_cart, except: [:create]

  def show
      if @cart
        render json: @cart, include: [:cart_items, :products]
      else 
        render json: { message: 'could not locate cart.'}
      end
  end

  def create
    @cart = Cart.create(cart_params)

    if @cart.save
      render json: @cart
    end
  end

  def delete_item 
    @cart_item = @cart.cart_items.find_by(id: params[:size_id])
    @cart_item.destroy!
    render :show
  end

  def add_item
    @product = Product.find_by(id: params[:product_id])
    @size = Size.find_by(product_id: @product.id, size: params[:size])

    item = @cart.cart_items.find_by(size_id: @size.id)
    item.increment if item
    @cart_item = CartItem.create!(
      cart_id: @cart.id,
      product_id: @product.id,
      size_id: @size.id
    )
    render json: {cart_item: @cart_item, size: @size}
  end

  def refresh 
    @cart.cart_items.each { |c| c.destroy }
    render json: @cart
  end


  private

  def set_cart
    @cart = Cart.find_by(member_id: params[:user_id])
  end

  def cart_params
    params.require(:cart).permit(:member_id)
  end
  
end