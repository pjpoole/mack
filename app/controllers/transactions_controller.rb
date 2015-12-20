class TransactionsController < ApplicationController
  def create
    account = Account.find(params[:account_id])
    transaction = account.transactions.create(transactions_params)

    transaction.splits.create(amount: transaction.amount)

    redirect_to account_path(account)
  end

  private
    def transactions_params
      params.require(:transaction).permit(:date, :description, :amount)
    end
end
