class TriesController < ApplicationController

  def create
    @content = Content.find(params[:content_id])
    @try = Try.create(user_id: current_user.id, content_id: @content.id)
  end

end
