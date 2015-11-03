module SessionsHelper
	def log_in(user)
		session[:user_id] = user.id
	end

	 def current_user
   		 @current_user ||= User.find(session[:user_id]) if session[:user_id]
   		 # redirect_to(root_url) unless current_user?(@user)
  	end


  	 def logged_in?
      !current_user.nil?
    end

    def authorize
      redirect_to '/login' unless @current_user
    end

end
