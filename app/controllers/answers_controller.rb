class AnswersController < ApplicationController

  def create
    @content = Content.find(params[:content_id])
    @answer = Answer.create(user_id: current_user.id, content_id: @content.id)
  end

  def destroy
    @content = Content.find(params[:content_id])
    @answer = Answer.find_by(user_id: current_user.id, content_id: @content.id)
    @answer.destroy
  end

end
