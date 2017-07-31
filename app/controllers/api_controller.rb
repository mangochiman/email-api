class ApiController < ApplicationController
  def send_email
    receiver = params[:receiver]
    message = params[:message]
    subject = params[:subject]
    
    UserMailer.send_feedback(receiver, message, subject).deliver
    render :text => "true" and return
  end
end
