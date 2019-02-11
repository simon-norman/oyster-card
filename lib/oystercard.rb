class Oystercard
  attr_reader :balance
  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
  end

  def top_up(amount)
    check_full(amount)
    @balance += amount
  end

  def check_full(amount)
    raise "The card is full" if amount + @balance > 90
  end

end
