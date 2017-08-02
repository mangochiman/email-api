class ApiController < ApplicationController
  skip_before_filter :verify_authenticity_token
  def send_email
    UserMailer.send_feedback(params).deliver
    render :text => "true" and return
  end
end
