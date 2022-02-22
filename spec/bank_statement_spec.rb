require "bank_statement"
describe BankStatement do
  subject(:bank_statement) { described_class.new }
    it 'can make a deposit of 1000' do
      expect(bank_statement.deposit).to eq(1000)
    end
end