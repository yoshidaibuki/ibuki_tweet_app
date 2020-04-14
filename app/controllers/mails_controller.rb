class MailsController < ApplicationController
  before_action :ensure_correct_user, {only: [:index]}

  def index
    @mails = Mail.all.order(created_at: :desc)
    @mail = Mail.find_by(id: params[:id])
  end

  def new
    @mail = Mail.new
  end

  def create
    @mail = Mail.new(content: params[:content])
    @mail.save
    flash[:goemail] = "貴重なご意見をいただきありがとうございます。<br>引き続きTweetをよろしくお願いします！"
    redirect_to("/posts/index")
  end

  def ensure_correct_user
    if @current_user.id != 9.to_i
      flash[:notice] = "権限がありません"
      redirect_to("/posts/index")
    end
  end
end
