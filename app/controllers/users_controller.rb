class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @contents = @user.contents.order("created_at DESC").includes([:rich_text_question])
  end

  def edit
    @user = User.find(params[:id])
  end

end
