class CommentsController < ApplicationController
  

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(comment_params)
    redirect_to "/users/posts/#{@comment.post.id}"
  end

  def destroy
    @comment = Comment.find_by(id: params[:id],post_id: params[:post_id])
    if @comment.destroy
      flash.now[:success] = 'コメント削除しました'
      redirect_to "/users/posts/#{@comment.post.id}"
    else
      redirect_to root_path
    end

  end

  private
  def comment_params
    params.require(:comment).permit(:title , :rate , :text).merge(user_id: current_user.id, post_id: params[:post_id])
  end

end
