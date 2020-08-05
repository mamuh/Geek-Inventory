class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end

  def create
    @transaction = Transaction.new
    @transaction.item = Item.find(params[:item_id])
    @transaction.user = current_user
    @transaction.quantity = @transaction.quantity.nil? ? 1 : @transaction.quantity + 1
    if @transaction.save
      redirect_to user_path(current_user)
    else
      redirect_to new_session_path
    end
  end

  def show
    @transaction = Transaction.find(params[:id])
  end

  #private

 # def transaction_params
 #  params.require(:transaction).permit(:quantity, :item_id)
 # end
end
