class Cart

  attr_reader :stock

  def initialize(stock = {"apple": 5, "banana": 3, "coconut": 2, "dragonfruit": 1})
    @stock = stock
  end
end