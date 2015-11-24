class MonetizeStatement < ActiveRecord::Migration
  def change
    add_money :statements, :balance
  end
end
