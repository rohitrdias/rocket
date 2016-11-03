class UserMailer < ApplicationMailer

	default to: "RocketTesttailor <testtailor2016@gmail.com>"
	def new_message(message)
    	@message = message
        mail subject: "Message from #{message.name}"
  end 
end
