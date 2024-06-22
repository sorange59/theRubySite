# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController
  def new
    # Display the login form
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      render 'login'
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
