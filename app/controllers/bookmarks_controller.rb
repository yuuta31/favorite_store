class BookmarksController < ApplicationController

  def create
    @bookmark = current_user.bookmarks.create(post_id: params[:post_id])
    flash[:success] = "登録完了しました！"
    redirect_to "/users/posts/#{@bookmark.post.id}"
  end

  def destroy
    @bookmark = Bookmark.find_by(post_id: params[:post_id] , user_id: current_user.id)
    @bookmark.destroy
    flash[:success] = "登録解除しました！"
    redirect_to "/users/posts/#{@bookmark.post.id}"
  end
end
