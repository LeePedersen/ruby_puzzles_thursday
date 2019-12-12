require('./lib/coin')
require('./lib/prime_sift')
require('./lib/allergen')

verbose = true #the way you refer to argument IDK
puts `clear`
puts('Welcome to our program')
puts('Which function would you like to try today?')
puts('1. Coin Counter')
puts('2. Prime Number Sifter')
puts('3. Allergies Calculator')

puts("\n Please input your selection")
response = gets.chomp

case response
when "1"
  puts `clear`
  puts("RUBY Coin Counter")
  puts("Please input a value (in cents)")
  input = gets.chomp

  coins = Coin.new(input.to_i)
  output = coins.coin_count
  coin_names = ['quarters','dimes','nickels','pennies']
  single_coins = ['quarter','dime','nickel','penny']
  response = []
  output.each_with_index do |coin, index|
    progress = ['-']
    if (verbose)
      puts `clear`
      puts("writing #{coin_names[index]} to output")
      i = 0
      while (i <= index)
        progress.push("###")
        i = i + 1
      end
      while (i <= coin_names.length)
        progress.push("   ")
        i = i + 1
      end
      puts(progress.push("-").join(""))
    end

    if coin > 1
      response.push("#{coin} #{coin_names[index]}")
    elsif (coin > 0)
      response.push("#{coin} #{single_coins[index]}")
    end
  end
  puts `clear`
  puts(progress.join(""))
  puts( response.join(', ') )

when "2"
  puts `clear`
  puts "RUBY Prime Counter"
  puts "Please input a number:"
  input = gets.chomp
  number = Number.new(input.to_i)
  puts `clear`
  puts "These are all the prime numbers less than your number: #{number.primify}"

when "3"

  puts `clear`
  puts "Allergy calculator"
  puts "Input an allergy score, or your allergies (separate with comma spaces)"
  input = gets.chomp
  if (input.to_i+1) == (input.to_i+1)
    input = input.to_i
  else
    input = input.split(', ')
  end
  allergies = Allergies.new(input)
  puts `clear`
  puts("Allergy calculator")
  puts("Score: #{allergies.score}")
  puts("Allergies: #{allergies.array.join(', ')}")
end
