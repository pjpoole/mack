class TransactionsController < ApplicationController
  def create
    account = Account.find(params[:account_id])
    account.transactions.create(transactions_params)

    redirect_to account_path(account)
  end

  private
    def transactions_params
      params.require(:transaction).permit(:date, :description, :amount)
    end
end
