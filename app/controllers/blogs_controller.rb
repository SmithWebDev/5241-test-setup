class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      flash[:success] = "Blog Entry has been created"
      redirect_to blogs_path
    else
      flash.now[:danger] = "Blog entry has not been created"
      render :new

    end
  end
  def edit

  end

  def show
    @blog = Blog.find(params[:id])
  end

  protected

    def resource_not_found
      message = "The blog you are looking for could not be found"
      flash[:alert] = message
      redirect_to root_path
    end

  private

    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end
