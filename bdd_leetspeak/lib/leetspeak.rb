require('pry')

def leetspeak(phrase)
    new_phrase = []
    phrase.tr!('eEoOI', '33001')
    split_phrase = phrase.split.each do |word|
        word = word[0,1] + word[1,word.length].tr('sS', 'zZ')
        new_phrase.push(word)
    end
    new_phrase.join(" ")
end