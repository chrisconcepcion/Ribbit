class SessionsController < ApplicationController
	
	def create
		user = User.find_by_username params[:username]
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id
			redirect_to root_url
			flash[:notice] = "Logged in!"
		else
			flash[:error] = "Wrong Username or Password"
			redirect_to root_url
		end
	end
	
	def destroy
		if session[:user_id] != nil
			session[:user_id] = nil
			redirect_to root_url
			flash[:notice] = "Logged out."
		end
	end
end