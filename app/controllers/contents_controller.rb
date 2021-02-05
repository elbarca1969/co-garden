class ContentsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @content = Content.new
  end

end
