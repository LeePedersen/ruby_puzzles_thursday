require('rspec')
require('prime_sift')

describe('int#prime') do
  it("returns 2, 3 when given 3") do
    number = Number.new(3)
    expect(number.primify).to(eq("2, 3"))
  end
  it("returns 2, 3, 5, 7, 11, 13 when given 13") do
    number = Number.new(13)
    expect(number.primify).to(eq("2, 3, 5, 7, 11, 13"))
  end
  it("returns all primes up to 67 when given 70") do
    number = Number.new(70)
    expect(number.primify).to(eq("2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67"))
  end
end
