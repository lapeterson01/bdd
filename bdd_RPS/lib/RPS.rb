class RPS
    def initialize
        @trumps = {
            "rock" => "scissors",
            "scissors" => "paper",
            "paper" => "rock"
        }
    end

    def win?(object, argument)
        @trumps.fetch(object).eql?(argument)
    end

    def lose?(object, argument)
        @trumps.fetch(argument).eql?(object)
    end

    def tie?(object, argument)
        object.eql?(argument)
    end
end