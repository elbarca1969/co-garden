class ContentsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_content, only: [:show, :edit]

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
  end

  def edit
  end

  private

  def content_params
    params.require(:content).permit(:grade_id, :subject_id, :category, :question, :answer, :explanation, :release_id).merge(user_id: current_user.id)
  end

  def set_content
    @content = Content.find(params[:id])
  end

end
