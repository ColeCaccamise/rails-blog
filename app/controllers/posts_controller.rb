class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new

  end

  def create
    # render plain: params[:post].inspect
    @post = Post.new(post_params)

    @post.save # make sure post is actually saved
    redirect_to @post
  end

  def edit
    @post = Post.find(params[:id]) # get the post
  end

  def update
    @post = Post.find(params[:id]) # get the post

    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id]) # get the post
    @post.destroy

    redirect_to posts_path
  end

  # only takes in title, body, author, and img_url
  private def post_params
    params.require(:post).permit(:title, :body, :author, :img_url)
  end
end
