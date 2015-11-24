class Statement < ActiveRecord::Base
  monetize :balance_cents

  belongs_to :account
end
