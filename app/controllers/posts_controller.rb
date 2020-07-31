class PostsController < ApplicationController
  before_action :all_tags       , only: %i(index)
  before_action :post_find      , only: %i(show)
  before_action :all_store      , only: %i(index show)

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag_list])
    else
      @posts = Post.all.includes(:images).order('created_at DESC').limit(4)
    end
    @post = Post.new
  end

  def show
    @comment = @post.comments.new
    @like = Like.new
    @bookmark = Bookmark.new
    @bookmarks = Bookmark.where(post_id: @post.id).all
    @image = Image.where(post_id: @post.id).all
    @comments = @post.comments.includes(:user)
  end

  def search
    if post_params[:tag_list]
      @search_posts = Post.where("name LIKE ?", "%#{post_params[:name]}%")
      @search_posts = @search_posts.tagged_with(post_params[:tag_list], match_all: false)
    else
      redirect_to ({action: 'index'}), alert: 'タグを入力してください'
    end
  end

  private

  def post_params
    params.require(:post).permit(tag_list:[])
  end
  
end
