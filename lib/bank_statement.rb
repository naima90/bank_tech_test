class BankStatement

  DEFAULT_BALANCE = 0

    def initialize
      @balance = DEFAULT_BALANCE
    end

    def balance 
      @balance 
    end

    def deposit(amount)
      @balance += amount
    end

    def withdraw(amount)
      raise "Insufficient funds" if @balance < amount
      
      @balance -= amount
    end
end
