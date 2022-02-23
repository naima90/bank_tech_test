# frozen_string_literal: true

class BankStatement
  attr_reader :date, :type, :balance, :amount

  def initialize(date: Time.now.strftime('%d/%m/%Y'), type: 'credit', amount: nil, balance: nil)
    @date = date
    @type = type
    @balance = balance
    @amount = amount
  end
end
