class Public::PostCommentsController < ApplicationController
  before_action :set_public_post_comment, only: %i[ show edit update destroy ]

  # GET /public/post_comments or /public/post_comments.json
  def index
    @public_post_comments = Public::PostComment.all
  end

  # GET /public/post_comments/1 or /public/post_comments/1.json
  def show
  end

  # GET /public/post_comments/new
  def new
    @public_post_comment = Public::PostComment.new
  end

  # GET /public/post_comments/1/edit
  def edit
  end

  # POST /public/post_comments or /public/post_comments.json
  def create
    @public_post_comment = Public::PostComment.new(public_post_comment_params)

    respond_to do |format|
      if @public_post_comment.save
        format.html { redirect_to public_post_comment_url(@public_post_comment), notice: "Post comment was successfully created." }
        format.json { render :show, status: :created, location: @public_post_comment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @public_post_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public/post_comments/1 or /public/post_comments/1.json
  def update
    respond_to do |format|
      if @public_post_comment.update(public_post_comment_params)
        format.html { redirect_to public_post_comment_url(@public_post_comment), notice: "Post comment was successfully updated." }
        format.json { render :show, status: :ok, location: @public_post_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @public_post_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public/post_comments/1 or /public/post_comments/1.json
  def destroy
    @public_post_comment.destroy

    respond_to do |format|
      format.html { redirect_to public_post_comments_url, notice: "Post comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_post_comment
      @public_post_comment = Public::PostComment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def public_post_comment_params
      params.fetch(:public_post_comment, {})
    end
end
