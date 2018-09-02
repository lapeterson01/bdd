require('rspec')
require('clock_angle')

describe('#clock_angle') do
    it('returns 0 degrees for 12 oclock') do
        expect(clock_angle('12:00')).to(eq(0))
    end

    it('returns 83 degrees for 12:15') do
        expect(clock_angle('12:15')).to(eq(83))
    end

    it('returns 165 degrees for 12:30') do
        expect(clock_angle('12:30')).to(eq(165))
    end

    it('returns 112 degrees for 12:45') do
        expect(clock_angle('12:45')).to(eq(112))
    end

    it('returns 36 degrees for 1:12') do
        expect(clock_angle('1:12')).to(eq(36))
    end

    it('returns 102 degrees for 1:24') do
        expect(clock_angle('1:24')).to(eq(102))
    end

    it('returns 90 degrees for 9:00') do
        expect(clock_angle('9:00')).to(eq(90))
    end

    it('returns 22 degrees for 9:45') do
        expect(clock_angle('9:45')).to(eq(22))
    end

    it('returns 180 degrees for 6:00') do
        expect(clock_angle('6:00')).to(eq(180))
    end
end