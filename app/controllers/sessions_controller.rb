class SessionsController < ApplicationController
  include SessionsHelper

  def index
  end

  def new
    @user = User.new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      log_in user
      redirect_to user
    else
      flash.now[:danger] = 'invalid email and password'
    render 'new'
  end
end

def destroy
  log_out
  redirect_to root_url
end
end
