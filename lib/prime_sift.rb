class Number
  def initialize(number)
    @number = number
  end
  def primify()
    all_numbers = []
    non_primes = []
    primes = []
    (1..@number).each{ |n| all_numbers.push(n)}
    all_numbers.each_with_index do |number, prime|
      all_numbers.each do |number_at_index|
        if number_at_index % (prime+2) === 0 && number_at_index != (prime+2)
          non_primes.push(number_at_index)
        end
      end
    end
    all_numbers.each do |number|
      if !(non_primes.include?(number)) && number != 1
        primes.push(number)
      end
    end
    return primes.join(", ")
  end
end
