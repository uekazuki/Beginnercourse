class Public::PostsController < ApplicationController
  def index
    if params[:q].present?
      @posts = Post.where("product_name LIKE ?", "%#{params[:q].strip}%")
    elsif params[:tag].present?
      
    else
      @posts = Post.all
    end
  end
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end
  def new
    @posts = Post.new
  end
  def edit
  end
  def create
    # byebug
    @posts = Post.new(posts_params)
    @posts.customer_id = current_customer.id
    @posts.save!
    redirect_to posts_path
  end
  def update
    # respond_to do |format|
    # end
  end
  def destroy
    @posts = Post.find(params[:id])
    @posts.destroy
    redirect_to post_path
  end
  private
  def posts_params
    params.require(:post).permit(:product_name, :content)
  end
end
