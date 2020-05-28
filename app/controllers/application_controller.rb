class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
  end

  def admin_user
    redirect_to root_path unless admin_signed_in? && current_admin.administrator?
  end

  def all_tags
    @tags = ActsAsTaggableOn::Tag.all
  end

  def post_find
    @post = Post.find(params[:id])
  end

  def all_store
    @new_store = Post.all.includes(:images).order('created_at DESC').limit(4)
    @shinjuku = Post.tagged_with("新宿").order('created_at DESC').limit(4)
    @ebisu = Post.tagged_with("恵比寿").order('created_at DESC').limit(4)
    @sibuya = Post.tagged_with("渋谷").order('created_at DESC').limit(4)
    @roppongi = Post.tagged_with("六本木").order('created_at DESC').limit(4)
    @nisiazabu = Post.tagged_with("西麻布").order('created_at DESC').limit(4)
    @washoku = Post.tagged_with("和食").order('created_at DESC').limit(4)
    @yousyoku = Post.tagged_with("洋食").order('created_at DESC').limit(4)
    @tyuka = Post.tagged_with("中華").order('created_at DESC').limit(4)
    @italian = Post.tagged_with("イタリアン").order('created_at DESC').limit(4)
    @french = Post.tagged_with("フレンチ").order('created_at DESC').limit(4)
    @tityukai = Post.tagged_with("地中海料理").order('created_at DESC').limit(4)
    @another = Post.tagged_with("その他").order('created_at DESC').limit(4)
    @personal = Post.tagged_with("個室").order('created_at DESC').limit(4)
    @recommend = Post.tagged_with("おすすめ").order('created_at DESC').limit(4)
    @atmosphere = Post.tagged_with("おしゃれ").order('created_at DESC').limit(4)
    @nosmoke = Post.tagged_with("全面禁煙").order('created_at DESC').limit(4)
    @smoke = Post.tagged_with("喫煙席あり").order('created_at DESC').limit(4)
    @card = Post.tagged_with("クレジットカード可").order('created_at DESC').limit(4)
  end
  
end
