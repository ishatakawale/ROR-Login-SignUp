class SessionsController < ApplicationController
  def new
  
  end
  def create
    user = User.find_by_id(params[:id]) #Finds the user by the user id
      if user.nil? #Checks if any field is missing and if there is then it sents the user back to the Login Page
        flash.now[:alert] = "All fields are mandatory"
        render "new" 
      elsif user.authenticate(params[:name]&&params[:password] ) #Checks if both password and username is valid
        session[:id] = user.id
        redirect_to '/phoenix/index', notice: "Logged in!"  
      else
        flash.now[:alert] = "ID, Name or Password is invalid"
        render "new"
      end
  end
  def destroy #Signs out the user after clicking on the Logout Buttion
    session[:id] = nil 
    redirect_to root_url, notice: "Logged out!" 
  end

end
