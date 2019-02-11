# How to run in irb

Run irb
require './lib/oystercard.rb'

oystercard = Oystercard.new

require './lib/oystercard.rb'

oystercard = Oystercard.new

oystercard.top_up(90)

oystercard.top_up(.001) => We are supposed to get an error. 
