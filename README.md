# How to run in irb

Run irb
require './lib/oystercard.rb'

oystercard = Oystercard.new

oystercard.balance

oystercard.top_up(10)

oystercard.balance

Feature test for deducting fare
require './lib/oystercard.rb'

oystercard = Oystercard.new

oystercard.balance

oystercard.top_up(10)

oystercard.deduct(10)

oystercard.balance

Feature test for touching in and out
require './lib/oystercard.rb'

oystercard = Oystercard.new

oystercard.touch_in

oystercard.in_journey?

oystercard.touch_out

oystercard.in_journey?