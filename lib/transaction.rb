class Transaction

attr_reader :transaction_history

  def initialize
    @transaction_history = []
  end

  def new_entry(amount, balance, type)
    if type == :credit 
       @transaction_history << [Time.now.strftime("%d/%m/%Y"), sprintf('%.2f', amount), "", sprintf('%.2f', balance)]
    else
       @transaction_history << [Time.now.strftime("%d/%m/%Y"), "", sprintf('%.2f', amount), sprintf('%.2f', balance)]
    end
  end
end


