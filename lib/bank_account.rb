class BankAccount
  attr_reader :name, :balance, :staus

  def initialize(name, balance = 1000, status = "open")
    @name = name
    @balance = balance
    @status = status
  end
end
