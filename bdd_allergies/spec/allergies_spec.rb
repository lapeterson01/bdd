require('rspec')
require('allergies')

describe('#allergies') do
    it('returns an array of allergies when given a corresponding number') do
        allergies = Allergies.new()
        expect(allergies.allergies(3)).to(eq(['eggs', 'peanuts']))
    end

    it('returns an array of allergies when given a corresponding number') do
        allergies = Allergies.new()
        expect(allergies.allergies(8)).to(eq(['strawberries']))
    end

    it('returns an array of allergies when given a corresponding number') do
        allergies = Allergies.new()
        expect(allergies.allergies(255)).to(eq(['eggs', 'peanuts', 'shellfish', 'strawberries', 'tomatoes', 'chocolate', 'pollen', 'cats']))
    end
end