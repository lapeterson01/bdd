require('rspec')
require('find_and_replace')

describe('#find_and_replace') do
    it('finds the specified word and replaces it') do
        phrase = Phrase.new("hello world")
        expect(phrase.find_and_replace("world", "universe")).to(eq("hello universe"))
    end

    it('only replaces the searched word if it is a full word in the phrase (not partial words)') do
        phrase = Phrase.new("I am walking my cat to the cathedral")
        expect(phrase.find_and_replace("cat", "dog")).to(eq("I am walking my dog to the cathedral"))
    end
end