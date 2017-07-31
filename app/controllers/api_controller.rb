class ApiController < ApplicationController
  def send_email
    sender = params[:sender]
    message = params[:message]
    subject = params[:subject]
    
    UserMailer.send_feedback(sender, message, subject).deliver
    render :text => "true" and return
  end
end
