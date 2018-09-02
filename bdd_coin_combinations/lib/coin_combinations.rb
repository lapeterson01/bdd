require('pry')

class Cents
    def combinations?(cents)
        coins = []
        if cents > 25
            coins.push((cents / 25).to_s)
            if cents / 25 == 1
                coins.push('quarter')
            else
                coins.push('quarters')
            end
            cents = cents - (25 * (cents / 25))
        end
        if cents.between?(10, 24)
            coins.push((cents / 10).to_s)
            if cents / 10 == 1
                coins.push('dime')
            else
                coins.push('dimes')
            end
            cents = cents - (10 * (cents / 10))
        end
        if cents.between?(5, 9)
            coins.push((cents / 5).to_s)
            if cents / 5 == 1
                coins.push('nickel')
            else
                coins.push('nickels')
            end
            cents = cents - (5 * (cents / 5))
        end
        if cents < 5
            coins.push(cents.to_s)
            if cents == 1
                coins.push('penny')
            else
                coins.push('pennies')
            end
        end
        coins.join(" ")
    end
end