class Admin::PostsController < ApplicationController

def index
   @posts=Post.all
end

def destroy
   Post.find(params[:id]).destroy
   redirect_to admin_posts_path
end

end
