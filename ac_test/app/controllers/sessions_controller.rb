class SessionsController < ApplicationController

	def new

	end

	def create
		user = User.find_by(name: params[:session][:name])
	 	session[:user_id] = user.id
	 	redirect_to root_url
	end

	def destroy
		session.delete(:user_id)
		redirect_to root_url
	end
end
