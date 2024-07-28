class ContactsMailer < ActionMailer::Base
	default to: "callofsunny@gmail.com"
		from: "sunorange59@gmail.com"
	
	def general_message(first_name, last_name, email, message)
		mail( 
			"reply-to":,email_address_with_name(email, "#{first_name} #{last_name}"),
			subject: "New contact form message!",
			body: message
		)
	end
end
