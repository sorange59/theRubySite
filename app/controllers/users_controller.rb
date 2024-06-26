# app/controllers/users_controller.rb

class UsersController < ApplicationController
    skip_before_action :authenticate_user!, only: [:create, :signup]


  def signup
  end

  def create
    @user = User.new(user_params)
    if @user.save
         if @user && @user.authenticate(params[:password])
          session[:user_id] = user.id
       # redirect_to user_path(user)
          redirect_to show, notice: 'Thank you for signing up!'
         end
    else
      render :signup
    end
  end

  def show
    @user = User.find(session[:user_id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end




end
