class BlogsController < ApplicationController
  def index
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    flash[:success] = "Blog Entry has been created"
    redirect_to blogs_path
  end
  def edit

  end

  private

    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
