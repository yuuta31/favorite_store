class BookmarksController < ApplicationController

  def create
    @bookmark = current_user.bookmarks.create(post_id: params[:post_id])
    redirect_to "/users/posts/#{@bookmark.post.id}", notice: 'ブックマークしました'
  end

  def destroy
    @bookmark = Bookmark.find_by(post_id: params[:post_id] , user_id: current_user.id)
    @bookmark.destroy
    redirect_to "/users/posts/#{@bookmark.post.id}" , alert: 'ブックマークを解除しました'
  end
end
