class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
    @nickname = user.nickname
    @bookmarks = Bookmark.where(user_id: current_user).all
  end
end
