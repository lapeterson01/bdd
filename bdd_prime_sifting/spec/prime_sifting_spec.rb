require('rspec')
require('prime_sifting')

describe('#prime_sift') do
    it('returns all prime numbers below 3') do
        prime = Prime.new()
        expect(prime.prime_sift(3)).to(eq([2]))
    end

    it('returns all prime numbers below 10') do
        prime = Prime.new()
        expect(prime.prime_sift(10)).to(eq([2,3,5,7]))
    end

    it('returns all prime numbers below 100') do
        prime = Prime.new()
        expect(prime.prime_sift(100)).to(eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]))
    end
end