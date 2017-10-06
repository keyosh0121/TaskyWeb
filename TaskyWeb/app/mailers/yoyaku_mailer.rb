class YoyakuMailer < ApplicationMailer
  def yoyaku_mail(yoyaku)
    @yoyaku = yoyaku
    mail(to:@yoyaku.email, subject:"Acapella Christmas 2017 予約受付")
  end

end
