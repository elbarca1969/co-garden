class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_content, only: [:show, :edit, :update, :destroy]

  def index
    @q = current_user.contents.ransack(params[:q])
    @contents = @q.result.order("created_at DESC").includes([:rich_text_question], :answers, :tries)
  end

  def new
    @content = Content.new
  end

  def create
    @content = Content.new(content_params)
    if @content.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    if current_user.id != @content.user_id && @content.release_id == 2
      redirect_to root_path
    end
  end

  def edit
    unless current_user.id == @content.user_id
      redirect_to root_path
    end
  end

  def update
    if @content.update(content_params)
      redirect_to content_path(@content)
    else
      render :edit
    end
  end

  def destroy
    if current_user.id == @content.user_id
      @content.destroy
      redirect_to root_path
    else
      render :index
    end
  end

  def search
    @q = Content.ransack(params[:q])
    @contents = @q.result.order("created_at DESC").includes([:rich_text_question], :answers, :user, :tries)
  end

  private

  def content_params
    params.require(:content).permit(:grade_id, :subject_id, :category, :question, :answer, :explanation, :release_id).merge(user_id: current_user.id)
  end

  def set_content
    @content = Content.find(params[:id])
  end

end
