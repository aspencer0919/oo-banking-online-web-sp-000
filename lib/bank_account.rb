class BankAccount
  attr_reader :name, :balance
  attr_accessor :status

  def initialize(name, balance = 1000, status = 'open')
    @name = name
    @balance = balance
    @status = status
  end

  def deposit(funds)
    @balance = (@balance += funds)
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if self.status == "open" && self.balance > 0
      true
    end
  end

  def close_account
    @status = "closed"
  end
end
