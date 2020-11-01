
class Api::V1::UsersController < ApplicationController

  def index
    users = User.all
  end

  def create
    user = User.new(user_params)
    user.password=(params[:password])

    if user.save
      login!(user)
      Cart.create!(member_id: user.id)
      render json: user
    else
      render json: user.errors.full_messages, status: 401
    end

  end

  def show
    user = User.find_by(id: params[:id])
    render json: { user: user }
  end
  
  private
  def user_params
      params.require(:user).permit(:name, :email, :password)
  end

end
