class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    account = user.account if user.present?

    if account && account.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to dashboard_path, notice: 'Logged In!'
    else
      flash[:alert] = 'Username or password incorrect!'
      render :new
    end
  end


  def delete
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged Out!'
  end
end
