# frozen_string_literal: true

class Account
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @tranction = Tranction.new
  end

  attr_reader :balance

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'Insufficient funds: Please bring your account into credit' if @balance < amount

    @balance -= amount
  end
end
