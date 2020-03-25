require 'account'

describe Account do

let(:account_test) { Account.new(0) }


  it 'should exist' do
  end

  describe '#display_balance' do

    it 'should return balance' do
      expect(subject.display_balance).to eq (0)

    end
  end

  describe '#add' do

    it 'should add 1 to balance' do
      expect(subject.add(1)).to eq (1)
    end
  end

  describe '#withdraw' do 

    it 'should withdraw from balance' do
      expect(subject.withdraw(1)).to eq (-1)
    end
  end

  describe '#add' do 

    it 'should return a balance of 100 when I add 100' do
      expect(subject.add(100)).to eq (100) 
    end

    it 'should return a balance of 90 when I add 100 and withdraw 10' do
      account_test.add(100)      
      expect(account_test.withdraw(10)).to eq (90)
    end
  end
end
