class StaticsController < ApplicationController

 def index 
 end
 
 def about
 end

 def services
 end

 def portfolio

 end

 def team

 end

 def contact

 	@message=Contact.new
 end


 	def new
 		@message = Contact.new
	end

	def create
			@message = Contact.new(message_params)
			if (@message.valid? and @message.save)
				UserMailer.new_message(@message).deliver
				flash[:notice]="Your message has not been sent succesfully." 
				redirect_to contact_path
				else
				flash[:notice]="Your message has not been sent succesfully."
				puts "mess #{flash[:notice]}"
				redirect_to contact_path
 			end
 	end

 
 private

  def message_params
    params.require(:contact).permit(:name, :email, :phone, :companyname, :subject, :message)
  end

end
