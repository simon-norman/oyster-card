class Oystercard

  attr_reader :balance, :in_journey
  DEFAULT_BALANCE = 0
  ACCOUNT_CAPACITY = 90

  def initialize
    @balance = DEFAULT_BALANCE
    @in_journey = false
  end

  def in_journey?
    @in_journey
  end

  def touch_in
    @in_journey = true
  end

  def top_up(amount)
    check_full(amount)
    @balance += amount
  end

  def check_full(amount)
    raise "The is not able to top up more than #{ACCOUNT_CAPACITY} pounds." if amount + @balance > ACCOUNT_CAPACITY
  end

  def deduct(amount)
    @balance -= amount
  end
end
