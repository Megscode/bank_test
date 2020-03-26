class Statement

  attr_reader :transaction

  def initialize(transaction = Transaction.new)
    @transaction = transaction

  end

  def header
    "date || credit || debit || balance"
  end

  def print_transactions
    puts header
    transaction.transaction_history.reverse.map do |transaction|
      puts transaction.join(' || ').gsub("||  ||", "|| ||")
    end
  end
end