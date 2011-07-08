class SessionsController < ApplicationController
  def new
  end
  
  def create
 	  user = User.authenticate(params[:email], params[:password])
	  if user
	 	  session[:user_id] =user.id
  	  redirect_to userevents_path, :notice =>"logged in"
    else
  	  flash.now.alert = "invalid email or password"
  	  render "new"
	  end
	end


  def destroy
  	session[:user_id]=nil
 	  redirect_to root_url, :notice => "logged out"
  end
end 	
