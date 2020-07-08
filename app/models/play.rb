class Play < ApplicationRecord
  belongs_to :user

  before_create :subtract_balance

  def subtract_balance
    user.update(balance: user.balance - 10)
  end
end
