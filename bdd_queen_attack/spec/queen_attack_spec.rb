require('rspec')
require('queen_attack')

describe('#queen_attack?') do
    it('is false if the coordinates are not horizontally, vertically, or diagonally in line with each other') do
        expect(queen_attack?([1,1], [2,3])).to(eq(false))
    end

    it('is true if the coordinates are horizontally in line with each other') do
        expect(queen_attack?([1,1], [3,1])).to(eq(true))
    end

    it('is true if the coordinates are vertically in line with each other') do
        expect(queen_attack?([1,1], [1,3])).to(eq(true))
    end

    it('is true if the coordinates are diagonally in line with each other') do
        expect(queen_attack?([1,1], [3,3])).to(eq(true))
    end
end