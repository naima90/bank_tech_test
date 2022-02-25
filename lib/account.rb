# frozen_string_literal: true

require './lib/bank_statement'

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
    transaction_deposit = @statement.new(type: "deposit", amount: amount, balance: @balance)
    @transaction_history.unshift transaction_deposit
  end

  def withdraw(amount)
    raise 'Insufficient funds: Please bring your account into credit' if @balance < amount
    @balance -= amount
    transaction_withdrawal = @statement.new(type: "withdraw", amount: amount, balance: @balance)
    @transaction_history.unshift transaction_withdrawal
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
end
