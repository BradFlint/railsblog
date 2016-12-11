class UsersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
      if @user.save
        session[:user_id] = @user.id 
        ##flash[:notice] = "Your account was created successfully."##
        redirect_to user_path @user
      else
        ##flash[:alert] = "There was a problem saving your account."##
        redirect_to new_user_path
    end
  end

  def new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]).update_attributes(params[:user])
    redirect_to user_path
  end

  def destroy
    current_user.destroy
    redirect_to users_path
  end
end
