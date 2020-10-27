
class Api::V1::UsersController < ApplicationController
  # before_action :require_logged_in!, only: [:show, :update]

  def index 
    @users = User.all
  end

  def create

    @user = User.new(user_params)
    @user.password=(params[:password])
    if @user.save
      login!(@user)
      Cart.create!(member_id: @user.id)
      render json: @user
    else
      render json: @user.errors.full_messages, status: 401
    end

  end
  
  def show
      @user = User.find_by(id: params[:id])
      render json: @user, include: [:plan_membership, :plan]
      
  end
  
  def destroy
    @user = selected_user

    if @user
        @user.destroy
        render :show
    else
        render ['Could not find user']

    end
  end
  
  private
  def user_params
      params.require(:user).permit(:name, :email, :password)
  end

end
