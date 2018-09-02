require('pry')

class Allergies
    def initialize
        @allergies = {
            1 => 'eggs',
            2 => 'peanuts',
            4 => 'shellfish',
            8 => 'strawberries',
            16 => 'tomatoes',
            32 => 'chocolate',
            64 => 'pollen',
            128 => 'cats'
        }
    end

    def allergies(number)
        new_allergies = []
        @allergies.keys.reverse.each do |i|
            if i <= number
                new_allergies.push(@allergies[i])
                number = number - i
            end
        end
        new_allergies.reverse
    end
end