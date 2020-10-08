class BlogsController < ApplicationController
  before_action :set_blog, only: [:edit, :show, :update]
  def index
    @blogs = Blog.all
  end

  def create
    @blog = Blog.create(blog_params)
    if @blog.save
      redirect_to new_blog_path, notice: "ブログを投稿しました！"
    else
      render :new
    end
  end

  def new
    @blog = Blog.new
  end

  def edit
  end

  def show
  end

  def update
    if @blog.update(blog_params)
      redirect_to new_blog_path, notice: "ブログを編集しました！"
    else
      render :edit
    end
  end

  private
  def blog_params
    params.require(:blog).permit(:content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end
end
