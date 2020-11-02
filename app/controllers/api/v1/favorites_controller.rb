class Api::V1::FavoritesController < ApplicationController
  def index
    if params[:user_id]
      favorites = Favorite.find_by(member_id: params[:user_id])
      render json: favorites, include: :product
    else
      render json: { status: 404, message: "Unable to find favorites."}
    end
  end

  def create
    favorite = Favorite.create!(
      member_id: params[:user_id],
      product_id: params[:product_id],
      size_id: params[:size_id]
    )
    if favorite.save
      render json: favorite
    else
      render json: { message: 'unable to save favorite' }
    end
  end

  def destroy
    favorite = Favorite.find(params[:favorite_id])
    favorites = Favorite.select{ |f| f.member_id == params[:user_id] }
    if favorite.destroy
      render json: favorites
    end
  end

  private
  def favorite_params
    params.require(:favorite).permit(:member_id, :product_id, size_attributes: [:size])
  end
end
