require 'bank_statement'

describe BankStatement do
  it 'can can print the date of the transaction' do
    date =  Time.now.strftime("%d/%m/%Y") 
    bank_statement = BankStatement.new(date: date)
    expect(bank_statement.date).to eq(date)
  end

  it 'can print the type of credit transaction' do
    bank_statement = BankStatement.new(type: "credit")
    expect(bank_statement.type).to eq("credit")
  end

  it 'can print the type of debit transaction' do
    bank_statement = BankStatement.new(type: "debit")
    expect(bank_statement.type).to eq("debit")
  end

  it 'can print the balance of the transaction' do
    bank_statement = BankStatement.new(balance: 900)
    expect(bank_statement.balance).to eq(900)
  end
end