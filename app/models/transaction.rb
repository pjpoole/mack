class Transaction < ActiveRecord::Base
  monetize :amount_cents

  belongs_to :statement
  belongs_to :account
  has_many :splits, dependent: :destroy

  def category
    cat = self.splits.pluck(:category).compact.uniq

    case cat.length
    when 0
      "None"
    when 1
      cat.first
    else
      "Multiple"
    end
  end
end
