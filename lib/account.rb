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
    @transaction.new_entry(amount, @balance, :credit)
    @balance
  end

  def withdraw(amount) 
    @balance -= amount
    @transaction.new_entry(amount, @balance, :debit)
    @balance
  end
  
end 