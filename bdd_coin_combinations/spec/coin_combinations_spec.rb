require('rspec')
require('coin_combinations')

describe('#combinations?') do
    it('returns the minimum amount of coins for four cents or less') do
        cents = Cents.new()
        expect(cents.combinations?(4)).to(eq('4 pennies'))
    end

    it('returns the minimum amount of coins for nine cents or less') do
        cents = Cents.new()
        expect(cents.combinations?(8)).to(eq('1 nickel 3 pennies'))
    end

    it('returns the minimum amount of coins for 24 cents or less') do
        cents = Cents.new()
        expect(cents.combinations?(22)).to(eq('2 dimes 2 pennies'))
    end

    it('returns the minimum amount of coins for any number of cents') do
        cents = Cents.new()
        expect(cents.combinations?(96)).to(eq('3 quarters 2 dimes 1 penny'))
    end
end