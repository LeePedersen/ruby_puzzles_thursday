class Coin
  attr_accessor(:cents)

  def initialize(cents)
    @cents = cents.to_i
  end
  def coin_count()
    coins = [25,10,5,1]
    coin_array = [0,0,0,0]

    coins.each_with_index do |coin, index|
      while (@cents >= coin)
        coin_array[index] += 1
        @cents -= coin
      end
    end
    return coin_array
  end
end
