class CommentsController < ApplicationController
  def index
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:name, :body))

    redirect_to post_path(@post)
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
    @post = Post.find(params[:post_id]) 
    @comment = @post.comments.find(params[:id])
    @comment.destroy

    redirect_to post_path(@post)
  end

  def comments_params
    params.require(:post).permit(:message, :user_id, :title, :body, :name)
  end
end
