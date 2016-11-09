class PostsController < ApplicationController
  def index
      @posts = Post.all
  end

  def show
  end

  def new
      @post = Post.new
  end

  def create
      @post = Post.new(post_params)
      if @post.save
          redirect_to()
      else
          render 'new'
      end

  end

  def edit
  end

  def destroy
  end

  def post_params
      params.require(:post).permit(:title, :content, :user_id)
  end
end
