class CommentsController < ApplicationController

  before_filter :authenticate_user!

  def create
    @comment = current_user.comments.create(comment_params)
    redirect_to :back
  end
  
  
  private
  def comment_params
    params.require(:comment).permit(:message, :user_id, :link_id)
  end
  
  

end
