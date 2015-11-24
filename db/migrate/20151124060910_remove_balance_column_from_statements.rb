require_relative '20151124053253_add_balance_column_to_statements'

class RemoveBalanceColumnFromStatements < ActiveRecord::Migration
  def change
    revert AddBalanceColumnToStatements
  end
end
