require('rspec')
require('allergen')

describe ('Allergies#initialize') do
  it('should initialize an allergy object with the correct values, if given a score') do
    allergies = Allergies.new(3)
    expect(allergies.score).to(eq(3))
    expect(allergies.array).to(eq(['eggs','peanuts']))
  end
  it('should initialize an allergy object with the correct values, if given an array') do
    allergies = Allergies.new(['eggs','peanuts'])
    expect(allergies.score).to(eq(3))
    expect(allergies.array).to(eq(['eggs','peanuts']))
  end
end
describe('Allergies#score_to_array') do
  it('should properly convert a score to an array') do
    allergies = Allergies.new(3)
    expect(allergies.score_to_array).to(eq(['eggs','peanuts']))
  end
end
describe('Allergies#array_to_score') do
  it('should properly convert an array to a score') do
    allergies = Allergies.new(['eggs','peanuts'])
    expect(allergies.array_to_score).to(eq(3))
  end
end
