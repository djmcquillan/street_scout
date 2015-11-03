class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  		log_in user
       flash[:success] = "You have successfully logged in"
  		redirect_to root_path
  	else
  		flash[:danger] = 'Invalid email or password'
  		render 'new'
  end
end

  def destroy
    session[:user_id] = nil
    redirect_to '/login'
  end

end
