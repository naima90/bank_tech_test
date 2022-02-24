# frozen_string_literal: true

require './lib/bank_statement'
# frozen_string_literal: true

class Account
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transaction_history = []
  end

  attr_reader :balance

  def deposit(amount)
    @balance += amount
    transaction = BankStatement.new(date: Time.now.strftime('%d/%m/%Y'), amount: amount, type: 'deposit', balance: @balance)
    @transaction_history << transaction
  end

  def withdraw(amount)
    raise 'Insufficient funds: Please bring your account into credit' if @balance < amount

    @balance -= amount
    transaction = BankStatement.new(date: Time.now.strftime('%d/%m/%Y'), amount: amount, type: 'withdraw', balance: @balance)
    @transaction_history << transaction
  end

  def print_statement
    @list = "date || credit || debit || balance \n"
    @transaction_history.reverse_each do |transaction|
      date = transaction.date
      credit = transaction.type == 'deposit' ? "#{transaction.amount}.00" : ''
      debit = transaction.type == 'withdraw' ? "#{transaction.amount}.00" : ''
      balance = "#{transaction.balance}.00"

      @list += "#{date}|| #{credit}|| #{debit}|| #{balance}\n"
    end

    puts @list
  end
end
