class Account

  def initialize(balance = 0)
    @balance = balance
  end  

  def display_balance
    @balance
  end

  def add
    @balance += 1
  end

  
end 