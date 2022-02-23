class BankStatement

  def initialize(date: @date, type: "credit", balance: nil)
    @date = Time.now.strftime("%d/%m/%Y") 
    @@type = type
    @balance = balance
  end

  def print_statement
    "date: #{@date} || credit: #{@credit} || debit: #{@debit} || balance: #{@balance} \n"
  end
end