class BlogPostsController < ApplicationController
  before_action :set_blog_post, only: [:show, :edit, :update, :destroy]

  def index
    @blog_posts = Blog_post.all
  end

  def show
  end

  def new
    @blog_post = Blog_post.new
  end

  def create
    @blog_post = Blog_post.new(blog_post_params)
    @blog_post.save
    redirect_to blog_post_path(@blog_post)
  end

  def edit
  end

  def update
    @blog_post.update(blog_post_params)
    redirect_to blog_post_path(@blog_post)
  end

  def destroy
    @blog_post.destroy
    redirect_to blog_posts_path
  end

  private

  def set_blog_post
    @blog_post = Blog_post.find(params[:id])
  end

  def blog_post_params # strong params
    params.require(:blog_post).permit(:likes)
  end
end
