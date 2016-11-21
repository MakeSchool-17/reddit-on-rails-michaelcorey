class PostsController < ApplicationController
  def index
      @posts = Post.all()
  end

  def new
      @subreddit = Subreddit.find(params[:subreddit_id])
      @post = Post.new
  end

  def create
      @subreddit = Subreddit.find(params[:subreddit_id])
      @post = @subreddit.posts.new(post_params)

      if @post.save
        #   redirect_to(controller: "posts", action: "show", id: @post.id)
        redirect_to(@subreddit)
      else
          redirect_to(new_subreddits_post_url)
          flash[:notice] = "Post could not be saved."
      end
  end

  def show
    @post = Post.find(params[:id])
    @comment = @post.comments.new
  end

  def edit
      @post = Post.find(params[:id])
  end

  def update
     @post = Post.find(params[:id])
     @post.update_attributes(post_params)
     redirect_to post_path
  end


  # def delete
  #     @post = Post.find(params[:id])
  # end

  def destroy
    Post.find(params[:id]).destroy
    flash[:success] = "Post deleted"
    redirect_to('')
  end


private

  def post_params
      params.require(:post).permit(:title, :body)
  end
end
