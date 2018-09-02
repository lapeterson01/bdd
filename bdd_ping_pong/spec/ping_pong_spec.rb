require('rspec')
require('ping_pong')

describe('#pingpong') do
    it('turns integer into array of integers from 1 to selected integer and every multiple of 3 and 5 are replaced with "ping" and "pong" respectively') do
        expect(pingpong(7)).to(eq([1,2,"ping",4,"pong","ping",7]))
    end
end