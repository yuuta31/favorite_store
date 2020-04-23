class Admins::PostsController < ApplicationController
  before_action :admin_user
  before_action :all_tags , only: %i(index edit)
  before_action :post_find , only: %i(edit update destroy)

  def index
    @post = Post.new 
    @post.images.new

    if params[:tag]
      @posts = Post.tagged_with(params[:tag])
    else
      @posts = Post.all #.includes(:image)
    end
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
    if @post.update(post_params)
      redirect_to admins_posts_path
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to admins_posts_path
    else
      render :index
    end
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
                                 images_attributes: [:image, :_destroy, :id]).merge(admin_id: current_admin.id)
  end

  def post_find
    @post = Post.find(params[:id])
  end

end
