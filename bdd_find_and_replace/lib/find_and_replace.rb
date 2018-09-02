require('pry')

class Phrase
    def initialize(phrase)
        @phrase = phrase
    end

    def find_and_replace(search, replacement)
        temp_phrase = @phrase.split
        replace_index = 0
        temp_phrase.each do |word|
            if word.eql?(search)
                replace_index = temp_phrase.index(word)
            end
        end
        temp_phrase[replace_index] = replacement
        temp_phrase.join(" ")
    end
end