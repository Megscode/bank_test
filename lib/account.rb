class Account

  def initialize(balance = 0, transaction = Transaction.new)
    @balance = balance
    @transaction = transaction
  end  

  def display_balance
    @balance
  end

  def add(amount)
    if amount.to_i < 0 
      return "You cannot deposit a negative amount"
    else
      @balance += amount
      @transaction.new_entry(amount, @balance, :credit)
      @balance
    end
  end

  def withdraw(amount) 
    if amount.to_i <0
      return "You cannot withdraw a negative amount"
    else
      @balance -= amount
      @transaction.new_entry(amount, @balance, :debit)
      @balance
    end
  end 
end 