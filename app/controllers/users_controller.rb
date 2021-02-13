class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]

  def show
    @contents = @user.contents.order("created_at DESC").includes([:rich_text_question])
  end

  def edit
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
  
end
