class Api::V1::FavoritesController < ApplicationController
  def index
    if params[:user_id]
      @favorites = Favorite.where(member_id: params[:user_id])
    end
    render json: @favorites.to_json(include: [:product])
  end

  def create
    puts params
    @size = Size.find_by(product_id: params[:product_id], size: params[:size])
    @member = User.find_by(id: params[:member_id])
    @favorite = Favorite.create!(
      member_id: @member.id,
      product_id: params[:product_id],
      size_id: @size.id
    )   
    if @favorite.save
      render json: @favorite
    end
  end

  def destroy
    @favorite = Favorite.find(params[:favorite_id])
    @user = User.select(id: params[:user_id])
    @favorites = Favorite.select{ |f| f.member_id == params[:user_id]}
    if @favorite.destroy
      render json: @favorites
    end
  end

  private
  def favorite_params
    params.require(:favorite).permit(:member_id, :product_id, size_attributes: [:size])
  end
end
