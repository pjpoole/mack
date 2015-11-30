class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.money :balance
      t.string :description
      t.references :account, foreign_key: true
      t.references :statement, foreign_key: true

      t.timestamps null: false
    end
  end
end
