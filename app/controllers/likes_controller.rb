class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(post_id: params[:post_id])
    flash[:success] = "登録完了しました！"
    redirect_to "/users/posts/#{@like.post.id}"
  end

  def destroy
    @like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    @like.destroy
    flash[:success] = "登録解除しました！"
    redirect_to "/users/posts/#{@like.post.id}"
  end
end
