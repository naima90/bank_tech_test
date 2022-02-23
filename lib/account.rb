# frozen_string_literal: true

class Account
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @date = date
  end

  def balance 
    @balance
  end

  def deposit(amount)
    @balance += amount
    @transaction_history = BankStatement.new(date: @date, type: "deposit", balance: @balance)
  end

  def withdraw(amount)
    raise 'Insufficient funds: Please bring your account into credit' if @balance < amount
    
    @balance -= amount
    @transaction_history = BankStatement.new(date: @date, type: "withdraw", balance: @balance)
  end
  
  def retrieve_statement
    @hash = @transaction_history.instance_variables.each_with_object({}) { |var, hash| hash[var[1..-1].to_sym] = @transaction_history.instance_variable_get(var) }
    @hash
  end
  
  private
  def date 
    @date = Time.now.strftime("%d/%m/%Y") 
  end

end
