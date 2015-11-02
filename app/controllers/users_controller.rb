class UsersController < ApplicationController
  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
      flash[:success] = "You have successfully logged in"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  def update
      if @user.update(user_params)
         redirect_to @user, notice: 'User was successfully updated.'
      else
        render :edit
      end
  end
 


 private
  def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
