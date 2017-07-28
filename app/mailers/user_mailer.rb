class UserMailer < ActionMailer::Base
  default from: "mangochiman@gmail.com"

  def welcome_message
    mail( :to => 'mangochiman@gmail.com',
    :subject => 'Thanks for signing up for our amazing app' )
  end

  def send_feedback(sender, message, subject)
    @feedback = message
    mail( :to => 'mangochiman@gmail.com', :from => "#{sender}",
    :subject => "#{subject}" )
  end
  
end
