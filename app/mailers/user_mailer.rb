class UserMailer < ActionMailer::Base
  default from: "webtechmw@gmail.com"

  def send_feedback(params)
    @feedback = params[:message]
    @author_name = params[:author_name]
    @author_email = params[:author_email]
    
    mail( :to => "#{params[:receiver]}", :subject => "#{params[:subject]}" )
  end
  
end
