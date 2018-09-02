class Palindrome
    def palindrome?(phrase)
        phrase.to_s == phrase.to_s.reverse()
    end
end