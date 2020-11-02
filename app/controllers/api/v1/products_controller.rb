class Api::V1::ProductsController < ApplicationController

  def index
    products = Product.filter_selection(params[:type], params[:value])
    render json: { products: products }
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