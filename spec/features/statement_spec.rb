require 'statement'
require 'timecop'

describe Statement do
  let(:transaction) { double :transaction }


  describe '#print_transactions' do
    it "should convert transaction history into a statement and print it" do
      Timecop.freeze do
      date = Time.now.strftime("%d/%m/%Y")
      allow(transaction).to receive(:transaction_history) { [[date, "100.00", '', "100.00"],
                                           [date, "50.00", '', "50.00"]] }
      end
    end
  end                                   

  describe '#statement' do

    it 'should display a bank statement with the correct header formatting' do
      expect(subject.header).to eq ("date || credit || debit || balance")
    end
  end
end
