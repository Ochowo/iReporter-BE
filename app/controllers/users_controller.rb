class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
  def signup
    @user= User.create!(users_params)
    if @user.save
      response = { message: 'User created successfully'}
      render json: response, status: :created 
    end
  end
  
  def users_params
  params.permit(:firstname, :lastname, :username, :email, :password )
  end
  def set_user
    @user = User.find(params[:id])
  end

end
