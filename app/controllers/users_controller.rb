class UsersController < ApplicationController
  def index
    @users = User.all
   # @users = User.has_fname
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id 
        redirect_to user_path @user
      else
        render 'new'
    end
  end
  
  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id]).update_attributes(user_params)
    redirect_to user_path
  end

  def destroy
    current_user.destroy
    redirect_to users_path
  end

  private
  #{"utf8"=> "/", "user" => {"fname" => "Brad"}}
  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :username)
  end
end



