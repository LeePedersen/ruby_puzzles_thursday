class Allergies
  attr_accessor(:score)
  attr_accessor(:array)

  def initialize(input)
    if (input.class == Array)
      @array = input
      @score = 0
      array_to_score()
    else
      while (input > 255)
        input = input.to_i - 256
      end
      @score = input
      @array = []
      score_to_array()
    end
  end

  def score_to_array()
    input = @score.to_i.to_s(2).split('').reverse # [1,1,0,0,1,1,0,0]
    puts(input)
    allergens = ['eggs','peanuts','shellfish','strawberries','tomatoes','chocolate','pollen','cats']
    output = []
    input.each_with_index do |input, index|
      if input == "1"
        output.push(allergens[index])
      end
    end
    @array = output
    return output
  end
  def array_to_score()
    score = 0
    allergens = ['eggs','peanuts','shellfish','strawberries','tomatoes','chocolate','pollen','cats']
    @array.each do |allergen|
      index = allergens.index(allergen)
      if index
        score += (2 ** index)
      end
    end
    @score = score
    return score
  end
end
