require('pry')

def pingpong(number)
    numbers = []
    counter = 0
    while counter < number
        counter += 1
        if counter.%(3).eql?(0)
            numbers.push("ping")
        elsif counter.%(5).eql?(0)
            numbers.push("pong")
        else
            numbers.push(counter)
        end
    end
    numbers
end