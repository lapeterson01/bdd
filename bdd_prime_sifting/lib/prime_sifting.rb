require('pry')

class Prime
    def initialize
        @primes = []
        @prime = 2
    end

    def prime_sift(number)
        @primes = *(2..(number - 1))
        until @prime == number
            @primes.reject! do |i|
                if i != @prime
                    i % @prime == 0
                end
            end
        @prime += 1
        end
        @primes
    end
end