class AddBalanceColumnToStatements < ActiveRecord::Migration
  def change
    add_column :statements, :balance, :decimal
  end
end
