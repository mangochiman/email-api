class ApiController < ApplicationController
  def send_email
    UserMailer.welcome_message.deliver
    UserMailer.send_feedback(sender, message, subject).deliver
    render :text => "true" and return
  end
end
