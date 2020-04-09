class Admins::PostsController < ApplicationController
  before_action :admin_user

  def index
    @post = Post.new 
    @post.images.new

    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all #.includes(:image)
    end
    @tags = ActsAsTaggableOn::Tag.all

    @aaa_posts = Post.tagged_with("aaa")
    @bbb_posts = Post.tagged_with("bbb")
    @ccc_posts = Post.tagged_with("ccc")
    @ddd_posts = Post.tagged_with("ddd")

  end

  def new

  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to admins_posts_path
    else
      render :index
    end
    
  end

  def edit

  end

  def update

  end

  def show

  end

  def destroy

  end

  def search
    search_posts = Post.where("name LIKE ?", "%#{post_params[:name]}%")
    @search_posts = search_posts.tagged_with(post_params[:tag_list], :match_all => false)
  end

  private

  def post_params
    params.require(:post).permit(:name,
                                 :payment,
                                 :station,
                                 :rest_day,
                                 :place,
                                 :open_time, 
                                 :store_url,
                                 tag_list: [], 
                                 images_attributes: [:image]).merge(admin_id: current_admin.id)
  end


end
