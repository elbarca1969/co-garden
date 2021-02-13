class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit]

  def show
    @contents = @user.contents.order("created_at DESC").includes([:rich_text_question])
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(current_user)
    else
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

end
