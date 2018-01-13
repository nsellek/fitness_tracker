class AccountsController < ApplicationController

  def new
    @account = Account.new
    @user = User.new
  end

  def create
    @account = Account.new(account_params)
    @user = @account.users.new(user_params)

    if @account.save! && @user.save!
      session[:user_id] = @user.id
      flash[:notice] = 'Account Created'
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def account_params
    params.require(:account).permit(:password, :password_confirmation)
  end

  def user_params
    params.require(:account).require(:user).permit(:username, :first_name, :last_name, :email, :gender, :weight).merge(height: convert_height)
  end

  def convert_height
    params[:height][:ft].to_i * 12 + params[:height][:in].to_i
  end
end
