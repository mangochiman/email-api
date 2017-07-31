class UserMailer < ActionMailer::Base
  default from: ""

  def send_feedback(receiver, message, subject)
    @feedback = message
    mail( :to => "#{receiver}", :subject => "#{subject}" )
  end
  
end
