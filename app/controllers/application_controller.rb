class ApplicationController < ActionController::Base
    private
    def authenticate_user!
        if session[:user_id].nil?
        redirect_to login_path, alert: 'You must be logged in to access this page'
        end
    end
end
