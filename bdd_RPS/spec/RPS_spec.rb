require('rspec')
require('RPS')

describe('#wins?') do
    it('returns true if rock is the object and scissors is the argument') do
        game = RPS.new()
        expect(game.win?("rock", "scissors")).to(eq(true))
    end

    it('returns false if rock is the object and paper is the argument') do
        game = RPS.new()
        expect(game.win?("rock", "paper")).to(eq(false))
    end

    it('returns false if rock is the object and rock is the argument') do
        game = RPS.new()
        expect(game.win?("rock", "rock")).to(eq(false))
    end
end

describe('#loses?') do
    it('returns true if paper is the object and scissors is the argument') do
        game = RPS.new()
        expect(game.lose?("paper", "scissors")).to(eq(true))
    end

    it('returns false if paper is the object and rock is the argument') do
        game = RPS.new()
        expect(game.lose?("paper", "rock")).to(eq(false))
    end

    it('returns false if paper is the object and paper is the argument') do
        game = RPS.new()
        expect(game.lose?("paper", "paper")).to(eq(false))
    end
end

describe('#ties?') do
    it('returns true if scissors is the object and scissors is the argument') do
        game = RPS.new()
        expect(game.tie?("scissors", "scissors")).to(eq(true))
    end

    it('returns false if scissors is the object and rock is the argument') do
        game = RPS.new()
        expect(game.tie?("scissors", "rock")).to(eq(false))
    end

    it('returns false if scissors is the object and paper is the argument') do
        game = RPS.new()
        expect(game.tie?("scissors", "paper")).to(eq(false))
    end
end