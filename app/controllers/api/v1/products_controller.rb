class Api::V1::ProductsController < ApplicationController

  def index
    puts params
    if params[:brand_id]
      products = Product.where(brand_id: params[:brand_id])
    elsif params[:category]
      products = Product.where(product_type: params[:category])
    elsif params[:size]
      products = Product.select { |p| p.sizes.includes(params[:size]) }
    else 
      products = Product.all.filter{ |p| p.product_type != "Accessory" && p.product_type != "Underwear" }
    end
    render json: { products: products, incude: :sizes }
  end

  def show
    product = Product.find_by(id: params[:id])
    render json: product, include: :sizes
  end

  private

  def products_params
    params.require(:product).permit(:brand_id)
  end
end
