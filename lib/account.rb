class Account

  def initialize(balance = 0, transaction = Transaction.new)
    @balance = balance
    @transaction
  end  

  def display_balance
    @balance
  end

  def add(amount)
    @balance += amount
    @transaction.store(amount, @balance, :credit)

  end

  def withdraw(amount) 
    @balance -= amount
    @transaction.store(amount, @balance, :debit)
  end
  
end 