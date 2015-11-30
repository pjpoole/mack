class RenameTransactionsBalanceColumnToAmount < ActiveRecord::Migration
  def change
    remove_money :transactions, :balance
    add_money :transactions, :amount
  end
end
