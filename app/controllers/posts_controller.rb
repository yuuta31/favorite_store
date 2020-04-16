class PostsController < ApplicationController
  before_action :all_tags , only: %i(index)
  before_action :tag_search ,only: %i(search)

  def index
    @post = Post.new 

    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all
    end

    @aaa_posts = Post.tagged_with("aaa")
    @bbb_posts = Post.tagged_with("bbb")
    @ccc_posts = Post.tagged_with("ccc")
    @ddd_posts = Post.tagged_with("ddd")

  end

  def show
  end

  def search
    if post_params[:tag_list]
      @search_posts = Post.where("name LIKE ?", "%#{post_params[:name]}%")
      @search_posts = @search_posts.tagged_with(post_params[:tag_list], match_all: false)
    else
      redirect_to ({action: 'index'}), notice: 'タグを入力してください'
    end
  end

  private

  def post_params
    params.require(:post).permit(tag_list:[])
  end

  def tag_search

  end
  
end
