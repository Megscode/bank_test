require 'account'

describe Account do
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
      expect(subject.withdraw).to eq (-1)
    end
  end

  describe '#add' do 

    it 'should return a balance of 100 when I add 100' do
      expect(subject.add(100)).to eq (100) 
    end
  end
end
