require 'account'

describe Account do

  describe '#transactions' do 

    it 'should collect all of the transactions' do
      expect(subject.transactions).to eq [] 
    end
  end
end