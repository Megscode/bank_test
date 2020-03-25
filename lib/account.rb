class Account

  def initialize(balance = 0)
    @balance = balance
  end  

  def display_balance
    @balance
  end

  def add(amount)
    @balance += amount

  end

  def withdraw 
    @balance -= 1
  end
  
end 