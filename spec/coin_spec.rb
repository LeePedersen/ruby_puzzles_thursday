require('rspec')
require('coin')

describe('Coin#coin_count') do
  it("returns [1,0,0,0] when given 25") do
    coins = Coin.new(25)
    expect(coins.coin_count).to(eq([1,0,0,0]))
  end
  it("returns [0,1,0,0] when given 10") do
    coins = Coin.new(10)
    expect(coins.coin_count).to(eq([0,1,0,0]))
  end
  it("returns [0,0,1,0] when given 5") do
    coins = Coin.new(5)
    expect(coins.coin_count).to(eq([0,0,1,0]))
  end
  it("returns [0,0,0,1] when given 1") do
    coins = Coin.new(1)
    expect(coins.coin_count).to(eq([0,0,0,1]))
  end
  it("returns [1,1,1,1] when given 41") do
    coins = Coin.new(41)
    expect(coins.coin_count).to(eq([1,1,1,1]))
  end
  it("returns [3,0,1,2] when given 82") do
    coins = Coin.new(82)
    expect(coins.coin_count).to(eq([3,0,1,2]))
  end
end
