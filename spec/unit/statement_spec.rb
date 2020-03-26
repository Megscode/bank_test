require 'statement'
require 'timecop'

describe Statement do

  describe '#statement' do

    it 'should display a bank statement with the correct header formatting' do
      expect(subject.header).to eq ("date || credit || debit || balance")
    end
  end
end
