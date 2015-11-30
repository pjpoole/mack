class Transaction < ActiveRecord::Base
  monetize :amount_cents

  belongs_to :statement
  belongs_to :account
end
