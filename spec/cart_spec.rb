require 'cart'

RSpec.describe Cart do
  it 'is a cart' do
    expect(Cart.new).to be_a Cart
  end

  it 'can access stock amount from item' do
    expect(subject.stock[:apple]).to eq 5
  end

  it 'can access prices from item' do
    expect(subject.prices[:apple]).to eq 40
  end

  it 'can order item and return total price' do
    order = subject.stock[:apple] * subject.prices[:apple]
    expect(order).to eq 200
  end
end