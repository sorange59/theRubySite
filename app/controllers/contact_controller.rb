class ContactController < ApplicationController
	
	def create
		@name = params[:contact][:name]
		@last_name = params[:contact][:last_name]
		@email = params[:contact][:email]
		@message = params[:contact][:message]
		
		# Perform any necessary actions with the form data
		flash[:success] = "Your message has been sent successfully."
		redirect_to :contact
	end
end
