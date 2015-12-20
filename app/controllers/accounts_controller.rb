class AccountsController < ApplicationController
  def show
    @account = Account.includes(:transactions).find(params[:id])
    @transaction = Transaction.new
  end

  def index
    @accounts = Account.all
  end
end
