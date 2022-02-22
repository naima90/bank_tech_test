require 'bank_statement'

describe BankStatement do
  subject(:bank_statement) { described_class.new }
  it 'can can print the date of the transaction' do
    expect(bank_statement.print_statement).to include("22/02/2022")
  end

  it 'can print the credit of the transaction' do
    bank_statement = BankStatement.new(credit: 1000)
    expect(bank_statement.print_statement).to include("1000")
  end

  it 'can print the debit of the transaction' do
    bank_statement = BankStatement.new(debit: 100)
    expect(bank_statement.print_statement).to include("100")
  end

  it 'can print the debit of the transaction' do
    bank_statement = BankStatement.new(balance: 900)
    expect(bank_statement.print_statement).to include("900")
  end
end