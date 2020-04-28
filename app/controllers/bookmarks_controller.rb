class BookmarksController < ApplicationController

  def create
    bookmark = current_user.bookmarks.build(post_id: params[:post_id])
    if bookmark.save!
      redirect_to 
    else
      redirect_to root_path
    end
  end

  def destroy
  end
end
