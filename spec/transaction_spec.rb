require 'transaction'
require 'timecop'

describe Transaction do

  describe '#new_entry' do
    it "should add the transaction to the transaction history if a deposit is added" do
      Timecop.freeze do
        expect(subject.new_entry("600.00", "650.00", :credit)).to eq [
          [Time.now.strftime("%d/%m/%Y"), "600.00", "", "650.00"]
        ]
      end
    end

    it "should add the transaction to the transaction history if a withdrawal is added" do
      Timecop.freeze do
        expect(subject.new_entry("50.00", "600.00", :debit)).to eq [
          [Time.now.strftime("%d/%m/%Y"), "50.00", "", "600.00"]
        ]
      end
    end
  end
end