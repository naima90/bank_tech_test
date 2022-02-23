require 'date'
class BankStatement

  def initialize(credit: nil, debit: nil, balance: nil)
    @date = Date.today.strftime('%d/%m/%Y')
    @credit = credit
    @debit = debit
    @balance = balance
  end

  def print_statement
    "date: #{@date} || credit: #{@credit} || debit: #{@debit} || balance: #{@balance} \n"
  end
end