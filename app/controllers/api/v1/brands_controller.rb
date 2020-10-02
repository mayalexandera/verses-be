class Api::V1::BrandsController < ApplicationController
  def index
    @brands = Brand.all
    render json: @brands
  end

  
  def show
    @brand = Brand.find(params[:id])
    render json: @brand
    #redirect_to api_v1_brand_products_path(@brand)
  end
end
