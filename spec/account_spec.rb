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

    it 'should add to balance' do
      expect(subject.add).to eq (1)
    end
  end

  describe '#withdraw' do 

    it 'should withdraw from balance' do
      expect(subject.withdraw).to eq (-1)
    end
  end

end