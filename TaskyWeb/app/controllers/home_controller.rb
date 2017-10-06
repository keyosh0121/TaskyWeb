class HomeController < ApplicationController
  def top
    @caution = ""
  end
  def yoyaku
    @caution = Array.new()
    if params[:email] != params[:email2]
      @caution.push("確認用アドレスが異なっています")
    else
      @yoyaku = Yoyaku.new(
        name: params[:name],
        email: params[:email],
        alignment: params[:alignment],
        amount: params[:amount].to_i
        )
      if @yoyaku.save
        redirect_to('/')
        YoyakuMailer.yoyaku_mail(@yoyaku).deliver
      else
        @caution="予約できませんでした。内容をもう一度確認してください"
        flash.now[:alert] = @caution
        render :action => :top
      end
    end
  end
end
