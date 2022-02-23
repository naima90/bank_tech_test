# frozen_string_literal: true

require 'account'

describe Account do
  subject(:account) { described_class.new }
  let(:date) { Time.now.strftime('%d/%m/%Y') }

  it 'has an initial balance of 0' do
    expect(account.balance).to eq(0)
  end

  it 'can deposit 1000 into the account' do
    account.deposit(1000)
    expect(account.balance).to eq(1000)
  end

  it 'can withdrawl 500 from the account' do
    account.deposit(1000)
    account.withdraw(500)
    expect(account.balance).to eq(500)
  end

  it 'raises an error if withdrawal amount is greater than balance' do
    account.deposit(500)
    expect { account.withdraw(1000) }.to raise_error 'Insufficient funds: Please bring your account into credit'
  end

  describe '#print_statement' do
    it 'can print statement date of transaction' do
      transaction = double(transaction, date: date, type: 'credit', balance: '100')
      expect(transaction.date).to eq(date)
    end

    it 'can print statement type of transaction' do
      transaction = double(transaction, date: date, type: 'credit', balance: '100')
      expect(transaction.type).to eq('credit')
    end

    it 'can print statement balance of transaction' do
      transaction = double(transaction, date: date, type: 'credit', balance: '100')
      expect(transaction.balance).to eq('100')
    end
  end
end
