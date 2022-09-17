class Public::CustomersController < ApplicationController
  
  def index
    @users = Customer.all
  end
  
  def show
    #@customer = Customer.find(params[:id])
    @customer = current_customer
    @posts = @customer.posts.page(params[:page]) 
  end

  def edit
    @user = current_customer
  end
  
  def update
    @customer = current_customer
    @customer.update(customer_params)
    redirect_to posts_path
  end


  private

  def customer_params
    params.require(:customer).permit(:name, :profile_image)
  end
end
