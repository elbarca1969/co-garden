class CommentsController < ApplicationController

  def create
    @content = Content.find(params[:content_id])
    @comment = @content.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      render :index
    end
  end
  
end
