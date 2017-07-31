class UserMailer < ActionMailer::Base
  default from: ""

  def send_feedback(sender, message, subject)
    @feedback = message
    mail( :to => "#{sender}", :subject => "#{subject}" )
  end
  
end
