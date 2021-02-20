class TriesController < ApplicationController
  before_action :set_content, only: [:create, :destroy, :list]

  def index
    @q = current_user.try_contents.ransack(params[:q])
    @trycontents = @q.result.order("created_at DESC").includes(:user, [:rich_text_question], :answers, :tries)
  end

  def create
    @try = Try.create(user_id: current_user.id, content_id: @content.id)
  end

  def destroy
    @try = Try.find_by(user_id: current_user.id, content_id: @content.id)
    @try.destroy
  end

  def list
    @tries = @content.tries
    @users = User.where(tries: @tries)
  end

  private

  def set_content
    @content = Content.find(params[:content_id])
  end

end
