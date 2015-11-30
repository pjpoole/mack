class Account < ActiveRecord::Base
  belongs_to :user
  has_many :statements, -> { order 'start_date' }
  has_many :transactions
end
