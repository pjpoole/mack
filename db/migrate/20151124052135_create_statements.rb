class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.date :start_date
      t.date :end_date
      t.references :account, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
