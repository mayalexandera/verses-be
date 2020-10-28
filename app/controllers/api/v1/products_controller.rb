class Api::V1::ProductsController < ApplicationController

  def index
    puts params
    if params[:brand_id]
      @products = Product.where(brand_id: params[:brand_id])
      byebug
    elsif params[:category]
      @products = Product.where(product_type: params[:category])
      byebug
    elsif params[:size]
      @products = Product.select { |p| p.sizes.includes(params[:size]) }
      byebug
    else 
      @products = Product.all.filter{ |p| p.product_type != "Accessory" && p.product_type != "Underwear" }
      byebug
    end
    render json: { products: @products, sizes: @sizes }
  end

  def show
    @product = Product.find_by(id: params[:id])
    render json: @product, include: :sizes
  end

  private

  def products_params
    params.require(:product).permit(:brand_id)
  end
end
