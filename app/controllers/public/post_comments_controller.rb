class Public::PostCommentsController < ApplicationController
  before_action :set_public_post_comment, only: %i[ show edit update destroy ]

  # GET /public/post_comments or /public/post_comments.json
  def index
    @comments = Comment.all
  end

  # GET /public/post_comments/1 or /public/post_comments/1.json
  def show
  end

  # GET /public/post_comments/new
  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  # GET /public/post_comments/1/edit
  def edit
  end

  # POST /public/post_comments or /public/post_comments.json
  def create
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]
    @comment.customer_id = current_customer.id


    if @comment.save
       redirect_to posts_path
    else
       render :new
    end
  end

  # PATCH/PUT /public/post_comments/1 or /public/post_comments/1.json
  def update
    respond_to do |format|
      if @comment.update(public_post_comment_params)
        format.html { redirect_to public_post_comment_url(@comment), notice: "Post comment was successfully updated." }
        format.json { render :show, status: :ok, location: @comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public/post_comments/1 or /public/post_comments/1.json
  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to public_post_comments_url, notice: "Post comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_post_comment
      @comment = Comment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:comment)
    end
end
