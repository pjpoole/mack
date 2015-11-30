class Transaction < ActiveRecord::Base
  monetize :balance_cents

  belongs_to :statement
  belongs_to :account
end
