class Api::V1::SessionsController < ApplicationController

  def new 
    render :new
  end

  def create
    user = User.find_by_credentials(params[:email], params[:password])
    if user.nil?
      render json:{ message: 'Incorrect credentials or the user does not exist', status: 401}
    else
      login!(user)
      redirect_to api_v1_user_url(user)
    end
  end

  def destroy
    logout!
    render json: { message: 'Logout successful.' }
  end
end