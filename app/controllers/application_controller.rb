class ApplicationController < ActionController::Base

    before_action :authenticate_user!, exept: :index


    private
    def authenticate_user!
        if session[:user_id].nil?
        redirect_to user_path, alert: 'You must be logged in to access this page'
        end
    end
end
