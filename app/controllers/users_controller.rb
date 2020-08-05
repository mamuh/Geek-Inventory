class UsersController < ApplicationController
  def show
    @user_transactions = current_user.transactions
    @transactions = @user_transactions.order('created_at DESC').page(params[:page]).per(5)
  end
end
