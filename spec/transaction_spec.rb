require 'transaction'
require 'timecop'

describe Transaction do

  describe '#store' do
    it "should add the transaction to the transaction history if a deposit is added" do
      Timecop.freeze do
        expect(subject.store(600, 650, :credit)).to eq [
          [Time.now.strftime("%d/%m/%Y"), "600.00", "", "650.00"]
        ]
      end
    end

    it "should add the transaction to the transaction history if a withdrawal is added" do
      Timecop.freeze do
        expect(subject.store(50, 600, :debit)).to eq [
          [Time.now.strftime("%d/%m/%Y"), "50.00", "", "600.00"]
        ]
      end
    end
  end
end