class Admins::PostsController < ApplicationController
  before_action :admin_user

  def index
    @post = Post.new 
    @post.images.new
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

  private

  def post_params
    params.require(:post).permit(:name,
                                 :payment,
                                 :station,
                                 :rest_day,
                                 :place,
                                 :open_time, 
                                 :store_url, 
                                 images_attributes: [:image]).merge(admin_id: current_admin.id)
  end


end
