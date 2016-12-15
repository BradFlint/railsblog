class UserFriendsController < ApplicationController
  def index
  end

  def create
    @userfriend = current_user.user_friends.new(friend_id: params[:friend_id])
    @userfriend.save
    redirect_to(:back)
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
    UserFriend.find(params[:id]).destroy
    redirect_to users_path
  end

  def user_friends_params
    params.require(:post).permit(:user_id, :friend_id)
  end

end
