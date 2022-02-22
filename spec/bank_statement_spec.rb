require "bank_statement"
describe BankStatement do
  subject(:bank_statement) { described_class.new }

    it 'has an initial balance of 0' do
      expect(bank_statement.balance).to eq(0)
    end

    it 'can deposit 1000 into the account' do
      bank_statement.deposit(1000)
      expect(bank_statement.balance).to eq(1000)
    end
end
