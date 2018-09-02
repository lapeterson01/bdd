require('pry')

class Number
    def initialize(number)
        @number = number
        @single_digit_words = {
            1 => "one",
            2 => "two",
            3 => "three",
            4 => "four",
            5 => "five",
            6 => "six",
            7 => "seven",
            8 => "eight",
            9 => "nine"
        }
        @double_digit_words = {
            1 => "ten",
            2 => "twenty",
            3 => "thirty",
            4 => "forty",
            5 => "fifty",
            6 => "sixty",
            7 => "seventy",
            8 => "eighty",
            9 => "ninety"
        }
        @teen_words = {
            1 => "eleven",
            2 => "twelve",
            3 => "thirteen",
            4 => "fourteen",
            5 => "fifteen",
            6 => "sixteen",
            7 => "seventeen",
            8 => "eighteen",
            9 => "nineteen"
        }
    end

    def to_words()
        number = @number.to_s.reverse
        final_word = []
        if number.length >= 10
            final_word.push(@single_digit_words.fetch(number[9].to_i))
            final_word.push("billion")
        end
        if number.length >= 9 && number[8] != "0"
            final_word.push(@single_digit_words.fetch(number[8].to_i))
            final_word.push("hundred")
        end
        if number[7] == "1"
            final_word.push(@teen_words.fetch(number[6].to_i))
        elsif number.length >= 8 && number[7] != "0"
            final_word.push(@double_digit_words.fetch(number[7].to_i))
        end
        if number.length >= 7
            if number[6] != "0" && number[7] != "1"
                final_word.push(@single_digit_words.fetch(number[6].to_i))
            end
            final_word.push("million")
        end
        if number.length >= 6 && number[5] != "0"
            final_word.push(@single_digit_words.fetch(number[5].to_i))
            final_word.push("hundred")
        end
        if number[4] == "1"
            final_word.push(@teen_words.fetch(number[3].to_i))
        elsif number.length >= 5 && number[4] != "0"
            final_word.push(@double_digit_words.fetch(number[4].to_i))
        end
        if number.length >= 4
            if number[3] != "0" && number[4] != "1"
                final_word.push(@single_digit_words.fetch(number[3].to_i))
            end
            if number.length < 7 || number[3] != "0" || number[4] != "0" || number[5] != "0"
                final_word.push("thousand")
            end
        end
        if number.length >= 3 && number[2] != "0"
            final_word.push(@single_digit_words.fetch(number[2].to_i))
            final_word.push("hundred")
        end
        if number[1] == "1"
            final_word.push(@teen_words.fetch(number[0].to_i))
        elsif number.length >= 2 && number[1] != "0"
            final_word.push(@double_digit_words.fetch(number[1].to_i))
        end
        if number[0] != "0" && number[1] != "1"
            final_word.push(@single_digit_words.fetch(number[0].to_i))
        end
        final_word.join(" ")
    end
end