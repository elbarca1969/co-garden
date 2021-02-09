class ContentsController < ApplicationController
  before_action :authenticate_user!

  def index
    @contents = current_user.contents.order("created_at DESC").includes([:rich_text_question])
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
    @content = Content.find(params[:id])
  end

  def edit
    @content = Content.find(params[:id])
  end

  private

  def content_params
    params.require(:content).permit(:grade_id, :subject_id, :category, :question, :answer, :explanation, :release_id).merge(user_id: current_user.id)
  end

end
