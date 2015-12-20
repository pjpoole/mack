class Split < ActiveRecord::Base
  monetize :amount_cents

  belongs_to :bank_transaction,
    class_name: "Transaction",
    foreign_key: :transaction_id

  belongs_to :category
end
