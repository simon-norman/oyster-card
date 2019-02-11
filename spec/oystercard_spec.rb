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
end
