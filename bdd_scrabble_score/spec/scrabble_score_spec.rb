require('rspec')
require('scrabble_score')

describe('#scrabble') do
    it('returns a scrabble score for a letter') do
        word = Word.new("a")
        expect(word.scrabble()).to(eq(1))
    end

    it('returns a scrabble score for a word') do
        word = Word.new("hello")
        expect(word.scrabble()).to(eq(8))
    end

    it('ignores spaces, numbers, and other non-alphabet characters') do
        word = Word.new("3quest:tree:an!")
        expect(word.scrabble()).to(eq(20))
    end
end