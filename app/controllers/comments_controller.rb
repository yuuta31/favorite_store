class CommentsController < ApplicationController

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to "/users/posts/#{@comment.post.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:title , :rate , :text).merge(user_id: current_user.id, post_id: params[:post_id])
  end

end
