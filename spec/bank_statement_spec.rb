require 'bank_statement'

describe BankStatement do
  let(:date) { Time.now.strftime("%d/%m/%Y") }
  it 'can can print the date of the transaction' do
    bank_statement = BankStatement.new(date: date)
    expect(bank_statement.print_statement).to include(date)
  end

  it 'can print the type of credit transaction' do
    bank_statement = BankStatement.new(type: "credit")
    expect(bank_statement.print_statement).to include("credit")
  end

  it 'can print the type of debit transaction' do
    bank_statement = BankStatement.new(type: "debit")
    expect(bank_statement.print_statement).to include("debit")
  end

  it 'can print the balance of the transaction' do
    bank_statement = BankStatement.new(balance: 900)
    expect(bank_statement.print_statement).to include("900")
  end
end