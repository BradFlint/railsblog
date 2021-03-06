class PostsController < ApplicationController
  def index
    @posts = Post.all.order('created_at DESC')
  end

  def create
    @post = Post.new(post_params)

    if @post.save
        redirect_to @post
      else
        flash[:alert] = "Post did not save"
        redirect_to new_post_path
    end
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
  end

  def update
    @post = Post.find(params[:id])

      if @post.update(params[:post].permit(:title, :body))
        redirect_to @post
      else
        render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end

  def post_params
    params.require(:post).permit(:message, :user_id, :title, :body)
  end
  
end
