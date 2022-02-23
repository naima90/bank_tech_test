class BankStatement

  attr_reader :date, :type, :balance, :amount

  def initialize(date: @date, type: "credit", amount: nil, balance: nil)
    @date = Time.now.strftime("%d/%m/%Y") 
    @type = type
    @balance = balance
    @amount = amount
  end
end