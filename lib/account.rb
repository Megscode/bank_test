class Account

  attr_reader :transactions 

  def initialize(balance = 0)
    @transactions = []
    @balance = balance
  end  

  def display_balance
    @balance
  end

  def add
    @balance += 1
  end

  def withdraw 
    @balance -= 1
  end
  
end 