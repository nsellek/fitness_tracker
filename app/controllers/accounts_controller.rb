class AccountsController < ApplicationController
  def new
    @account = Account.new
    @user = User.new
  end

  def create
    @account = Account.new(account_params)
    @user = User.new(user_params)

    if @account.save! && @user.save!
      redirect_to dashboard_path, flash: 'Account Created'
    else
      render :new
    end
  end

  private

  def account_params

  end

  def user_params

  end
end
