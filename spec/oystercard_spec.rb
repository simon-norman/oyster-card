# frozen_string_literal: true

require 'oystercard'

describe Oystercard do
  before(:each) do
    @oystercard = Oystercard.new
  end

  it 'should set balance on new oyster cards to 0' do
    expect(@oystercard.balance).to eq(0)
  end

  it 'should increase the balance by the top up amount' do
    initial_balance = @oystercard.balance
    @oystercard.top_up(10)

    expect(@oystercard.balance - initial_balance).to eq(10)
  end

  it 'should not be able to top up beyond £90.' do
    @oystercard.top_up(90)

    expect { @oystercard.top_up(0.001) }.to raise_error("The is not able to top up more than #{Oystercard::ACCOUNT_CAPACITY} pounds.")
  end

  it 'should deduct balance by the specified amount' do
    initial_balance = @oystercard.balance
    @oystercard.deduct(10)

    expect(@oystercard.balance).to eq(initial_balance - 10)
  end

  it 'should return the current journey status' do
    expect(@oystercard.in_journey?).to eq(false)
  end

  it "should return return the current journey status when it is touched_in as true." do
    @oystercard.touch_in()

    expect(@oystercard.in_journey).to be true
  end
end
