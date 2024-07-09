class ApplicationController < ActionController::Base

    before_action :authenticate_user!, exept: :index


    private
    def authenticate_user!
        if session[:user_id].nil?
        end
    end
end
