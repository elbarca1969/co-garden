class AnswersController < ApplicationController

  def create
    @content = Content.find(params[:content_id])
    @answer = Answer.create(user_id: current_user.id, content_id: @content.id)
  end

end
