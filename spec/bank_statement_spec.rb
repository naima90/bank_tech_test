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

    it 'can withdrawl 500 from the account' do
      bank_statement.deposit(1000)
      bank_statement.withdraw(500)
      expect(bank_statement.balance).to eq(500)
    end

    it 'raises an error if withdrawal amount is greater than balance' do
      bank_statement.deposit(500)
      expect { bank_statement.withdraw(1000) }.to raise_error "Insufficient funds"
    end
end
