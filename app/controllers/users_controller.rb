class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user, only: [:show, :edit, :update]

  def show
    @q = @user.contents.ransack(params[:q])
    @contents = @q.result.order("created_at DESC").includes([:rich_text_question], :answers)
  end

  def edit
    unless current_user.id == @user.id
      redirect_to root_path
    end
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

  def user_params
    params.require(:user).permit(:nickname, :user_name, :introduction, :prefecture_id, :birthday, :email)
  end

end
