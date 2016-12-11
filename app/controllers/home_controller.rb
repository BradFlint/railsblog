class HomeController < ApplicationController
  def show
		@users = User.all
	end
  def search
  	puts "THESE ARE THE PARAMS: #{params.inspect}"
     
  	@users = User.where("fname LIKE ? OR lname LIKE ?", "%#{params[:query]}%", "%#{params[:query]}%")
  end
end
