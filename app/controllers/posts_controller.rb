class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    @post = Post.all.order("created_at DESC")
    @post = Post.paginate(:page => params[:page], :per_page => 10)
  end

  def new
    @post = current_user.posts.build
    #Post.new
  end

  def show
  end

  def create
    @post = current_user.posts.build(post_params)
    #Post.new(post_params)

    if @post.save
      redirect_to @post
    else
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def edit
  end

  def destroy
    @post.destroy
    redirect_to posts_path
  end

  private

  def find_post
    @post=Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :genres)
  end
end
