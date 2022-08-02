require 'cart'

RSpec.describe Cart do
  it 'is a cart' do
    expect(Cart.new).to be_a Cart
  end
end