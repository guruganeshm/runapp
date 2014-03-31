class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
###################################################################################

def home
	


end

#####################################################################################

def about
	


end

######################################################################################

def team
	


end

######################################################################################

def contact
	


end

######################################################################################

def main
   unless session[:signed_in]== true
	redirect_to '/home'
		
	end	
	
end

######################################################################################

def register

    @username = params[:username]
    @email = params[:email]
  	@password = params[:password]
  	@password_confirmation = params[:password_confirmation]
    if @password == @password_confirmation
   user = User.create_with_password(@username, @email, @password)
      if user 
          session[:signed_in] = true
          session[:email] = params[:email]
          redirect_to '/main'
         else
	  redirect_to '/signup'
    end
    end
	  end

######################################################################################

def sign_in
    @username = params[:username]
	  @email = params[:email]
 	  @password = params[:password]

 	  user = User.where(email: @email ).first 

     if user
 	  valid = user.verify_password(@password)
  
      if valid
	   session[:signed_in] = true
 	   session[:email] = params[:email]
 	   redirect_to '/main'

     else
	   redirect_to '/home'

     end

    else 	
	  redirect_to '/home'
    end



  	
		
end

######################################################################################

def logout
 
	session[:signed_in]=false  
	redirect_to '/home'
end

######################################################################################

end
