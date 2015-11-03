class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  		log_in user
  		redirect_to root_path
  	else
  		flash[:danger] = 'Invalid email or password'
  		render 'new'
  end
end

  def destroy
    render 'new'
  end

end
