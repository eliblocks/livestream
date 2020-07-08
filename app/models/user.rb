class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

  has_many :plays

  def reset_balance
    balance = 6000 - (plays.count * 10)
    update(balance: balance)
  end
end
