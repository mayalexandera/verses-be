class Api::V1::SizesController < ApplicationController

  def index
    sizes = Size.all.where(
      product_id: params[:product_id],
      brand_id: params[:brand_id]
    )
    render json: sizes
  end

  def show
    size = Size.find_by(id: params[:id])
    if size
      render json: size
    else
      render json: { message: 'Could not find product.' }
    end
  end

  def update
    quantity = params[:quantity]
    size = Size.find_by(id: params[:id])
    if quantity <= size.stock
      size.update(stock: (stock - quantity))
      render json: size
    else
      render json: size.errors.full_messages
    end
  end

  private 
  def size_params 
    params.require(:product).permit(:product_id, :brand_id)
  end
  
end