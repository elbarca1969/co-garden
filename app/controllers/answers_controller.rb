class AnswersController < ApplicationController
  before_action :set_content, only: [:create, :destroy]

  def create
    @answer = Answer.create(user_id: current_user.id, content_id: @content.id)
  end

  def destroy
    @answer = Answer.find_by(user_id: current_user.id, content_id: @content.id)
    @answer.destroy
  end

  private

  def set_content
    @content = Content.find(params[:content_id])
  end

end
