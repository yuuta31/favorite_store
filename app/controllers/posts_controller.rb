class PostsController < ApplicationController
  before_action :all_tags  , only: %i(index)
  before_action :post_find , only: %i(show)

  def index
    if params[:tag]
      @posts = Post.tagged_with(params[:tag_list])
    else
      @posts = Post.all.includes(:images)
    end
    @post = Post.new

    @aaa_posts = Post.tagged_with("新宿").order('created_at DESC').limit(4)
    @bbb_posts = Post.tagged_with("bbb").order('created_at DESC').limit(4)
    @ccc_posts = Post.tagged_with("ccc").order('created_at DESC').limit(4)
    @ddd_posts = Post.tagged_with("ddd").order('created_at DESC').limit(4)

    @index = Post.all
    
    @count = Comment.where(post_id: @post.id)
  end

  def show
    @comment = @post.comments.new
    @like = Like.new
    @bookmark = Bookmark.new

    @stars = Comment.where(id: @post.id)
    @bookmarks = Bookmark.where(post_id: @post.id).all
    @count = Comment.where(post_id: @post.id)
    @image = Image.where(post_id: @post.id).all

    @comments = @post.comments.includes(:user)
    @aaa_posts = Post.tagged_with("aaa").order('created_at DESC').limit(2)
    @bbb_posts = Post.tagged_with("bbb").order('created_at DESC').limit(2)
    @ccc_posts = Post.tagged_with("ccc").order('created_at DESC').limit(2)
    @ddd_posts = Post.tagged_with("ddd").order('created_at DESC').limit(2)
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
