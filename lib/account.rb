# frozen_string_literal: true

require './lib/bank_statement'
# frozen_string_literal: true

class Account
  attr_reader :balance

  DEFAULT_BALANCE = 0

  def initialize(statement: BankStatement)
    @statement = statement
    @balance = DEFAULT_BALANCE
    @transaction_history = []
  end


  def deposit(amount)
    @balance += amount
    deposit_transaction(type: "deposit", amount: amount, balance: @balance)
  end

  def withdraw(amount)
    raise 'Insufficient funds: Please bring your account into credit' if @balance < amount
    @balance -= amount
    withdrawal_transaction(type: "withdraw", amount: amount, balance: @balance)
  end

  def print_statement
    @list = "date || credit || debit || balance \n"
    @transaction_history.each do |transaction|
      date = transaction.date
      credit = transaction.type == 'deposit' ? "#{transaction.amount}.00" : ''
      debit = transaction.type == 'withdraw' ? "#{transaction.amount}.00" : ''
      balance = "#{transaction.balance}.00"

      @list += "#{date}|| #{credit}|| #{debit}|| #{balance}\n"
    end

    puts @list
  end
  
  private
  def deposit_transaction(type: nil, amount: nil, balance: nil)
    deposit = @statement.new(type: "deposit", amount: amount, balance: balance)
    @transaction_history.unshift deposit
  end

  def withdrawal_transaction(type: nil, amount: nil, balance: nil)
    withdraw = @statement.new(type: "withdraw", amount: amount, balance: balance)
    @transaction_history.unshift withdraw
  end

end
