class BankStatement

  attr_reader :date, :type, :balance

  def initialize(date: @date, type: "credit", balance: nil)
    @date = Time.now.strftime("%d/%m/%Y") 
    @type = type
    @balance = balance
  end
end