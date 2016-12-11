class SessionsController < ApplicationController
  def new
  end

  def create
  	puts "These are my params: #{params.inspect}"
  	@user = User.where(fname: params[:fname], password: params[:password]).first
  	puts "did we get a user"
  	if @user
  		session[:user_id] = @user.id
  		redirect_to user_path @user
  	else 
  		redirect_to login_path
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to login_path 
  end
end
