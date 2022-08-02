require 'cart'

RSpec.describe Cart do
  it 'is a cart' do
    expect(Cart.new).to be_a Cart
  end

  it 'contains items' do
    cart = Cart.new
    expect(cart.stock[:apple]).to eq 5
  end
end