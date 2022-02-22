require 'bank_statement'

describe BankStatement do
  subject(:bank_statement) { described_class.new }
  it 'can can print the date of the transaction' do
    expect(bank_statement.print_statement).to eq("22/02/2022")
  end
end