class HomeController < ApplicationController
  
  def contact
    if request.post? and params[:reset_password]
    	      if contact = Contact.new(params[:reset_password])

    	        contact.name = "#{params[:reset_password][:name]}"
    	        contact.email = "#{params[:reset_password][:email]}"
    	        contact.message = "#{params[:reset_password][:message]}"
    	        contact.save


    	        Emailer.deliver_contact_email(contact)

              flash[:notice] = "Thank you for sending a mail."
    	        redirect_to("/")

    	      end

    	   else
    	     @title = "contacts"
  	     end
  end
  
  def index
    @title = "home"
  end
  
end
