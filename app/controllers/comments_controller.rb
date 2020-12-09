class CommentsController < ApplicationController
  
  def create
    
    if @comment = Comment.create(comment_params)
      redirect_to "/prototypes/#{@comment.prototype}"
    else
      @prototype = @comment.prototype
      @comments = @prototype.comments
      render "prototypes/show"
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id,prototype_id: params[:prototype_id])
  end
end
