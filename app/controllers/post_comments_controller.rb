class PostCommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post_comment = current_user.post_comments.new(post_comment_params)
    @post_comment.post_id = @post.id
    @post_comment.save
    @post.create_notification_post_comment!(current_user, @post_comment.id)
  end

  def destroy
    target_id = params[:id].to_i
    @post_comment = PostComment.find(target_id)
    @post = Post.find(@post_comment.post_id)
    @post_comment.destroy
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
end
