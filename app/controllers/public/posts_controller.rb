class Public::PostsController < ApplicationController
  before_action :set_public_post, only: %i[ show edit update destroy ]

  # GET /public/posts or /public/posts.json
  def index
    @public_posts = Public::Post.all
  end

  # GET /public/posts/1 or /public/posts/1.json
  def show
  end

  # GET /public/posts/new
  def new
    @public_post = Public::Post.new
  end

  # GET /public/posts/1/edit
  def edit
  end

  # POST /public/posts or /public/posts.json
  def create
    @public_post = Public::Post.new(public_post_params)

    respond_to do |format|
      if @public_post.save
        format.html { redirect_to public_post_url(@public_post), notice: "Post was successfully created." }
        format.json { render :show, status: :created, location: @public_post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @public_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /public/posts/1 or /public/posts/1.json
  def update
    respond_to do |format|
      if @public_post.update(public_post_params)
        format.html { redirect_to public_post_url(@public_post), notice: "Post was successfully updated." }
        format.json { render :show, status: :ok, location: @public_post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @public_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /public/posts/1 or /public/posts/1.json
  def destroy
    @public_post.destroy

    respond_to do |format|
      format.html { redirect_to public_posts_url, notice: "Post was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_public_post
      @public_post = Public::Post.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def public_post_params
      params.fetch(:public_post, {})
    end
end
