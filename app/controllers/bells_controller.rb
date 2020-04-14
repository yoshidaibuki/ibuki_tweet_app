class BellsController < ApplicationController
  before_action :ensure_correct_user, {only: [:new]}

  def index
    @bells = Bell.all
  end

  def new
  end

  def create
    @bell = Bell.new(content: params[:content])
    @bell.save
    redirect_to("/bells/index")
  end

  def ensure_correct_user
    if @current_user.id != 9.to_i
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end
end
