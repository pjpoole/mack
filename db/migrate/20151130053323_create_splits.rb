class CreateSplits < ActiveRecord::Migration
  def change
    create_table :splits do |t|
      t.references :transaction, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true
      t.money :amount

      t.timestamps null: false
    end
  end
end
