require('pry')

def title_case(phrase)
    split_phrase = phrase.split()
    split_phrase.each() do |word|
        word.capitalize!()
    end
    split_phrase.join(" ")
end