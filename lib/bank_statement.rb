require 'date'
class BankStatement

  def initialize
    @date = Date.today.strftime('%d/%m/%Y')
  end

  def print_statement
    "#{@date}"
  end
end