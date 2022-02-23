# frozen_string_literal: true

class Account
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @date = date
    @transaction_history = {date: date, type: "credit", balance: nil}
  end

  def balance 
    @balance
  end

  def deposit(amount)
    @balance += amount
    @transaction_history[:balance] = @balance
  end

  def withdraw(amount)
    raise 'Insufficient funds: Please bring your account into credit' if @balance < amount
    
    @balance -= amount
    @transaction_history[:balance] = @balance
  end


  
  def retrieve_statement
    @transaction_history
  end
  
  private
  def date 
    @date = Time.now.strftime("%d/%m/%Y") 
  end

end
