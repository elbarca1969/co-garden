class TriesController < ApplicationController
  before_action :set_content, only: [:create, :destroy]

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
