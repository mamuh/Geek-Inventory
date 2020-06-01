class TransactionsController < ApplicationController
  def index
    @transactions = Transaction.all
  end
  
  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user.id
    if @transaction.save 
      redirect_to items_path
    else
      render :new
    end
  end
  
  def show
    @transaction = Transaction.find(params[:id])
  end

  private

  def transaction_params
    params.require(:transaction).permit(:quantity, :item_id)
  end
end
