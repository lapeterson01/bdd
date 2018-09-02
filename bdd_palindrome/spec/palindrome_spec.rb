require('rspec')
require('palindrome')

describe('#palindrome?') do
    it('returns true if a string is a palindrome') do
        palindrome = Palindrome.new()
        expect(palindrome.palindrome?('racecar')).to(eq(true))
    end

    it('returns false if a string is not a palindrome') do
        palindrome = Palindrome.new()
        expect(palindrome.palindrome?('cat')).to(eq(false))
    end

    it('returns true if a number is a palindrome') do
        palindrome = Palindrome.new()
        expect(palindrome.palindrome?(12321)).to(eq(true))
    end

    it('returns false if a number is not a palindrome') do
        palindrome = Palindrome.new()
        expect(palindrome.palindrome?(12345)).to(eq(false))
    end

    it('returns true if a phrase is a palindrome') do
        palindrome = Palindrome.new()
        expect(palindrome.palindrome?('bat tab')).to(eq(true))
    end

    it('returns false if a phrase is not a palindrome') do
        palindrome = Palindrome.new()
        expect(palindrome.palindrome?('kitty cat')).to(eq(false))
    end
end