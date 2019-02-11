require 'oystercard'

describe Oystercard do
  it 'should set balance on new oyster cards to 0' do
    oystercard = Oystercard.new

    expect(oystercard.balance).to eq(0)
  end
end
