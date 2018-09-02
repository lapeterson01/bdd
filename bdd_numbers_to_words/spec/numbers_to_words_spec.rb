require('rspec')
require('numbers_to_words')

describe('#to_words') do
    it('changes single digit numbers to words') do
        number = Number.new(1)
        expect(number.to_words()).to(eq("one"))
    end

    it('changes double digit numbers ending in zero to words') do
        number = Number.new(30)
        expect(number.to_words()).to(eq("thirty"))
    end

    it('changes double digit numbers in the teens to words') do
        number = Number.new(16)
        expect(number.to_words()).to(eq("sixteen"))
    end

    it('changes all other double digit numbers to words') do
        number = Number.new(92)
        expect(number.to_words()).to(eq("ninety two"))
    end

    it('changes 100 to words') do
        number = Number.new(100)
        expect(number.to_words()).to(eq("one hundred"))
    end

    it('changes three digit numbers in the teens to words') do
        number = Number.new(217)
        expect(number.to_words()).to(eq("two hundred seventeen"))
    end

    it('changes all three digit numbers ending in zero to words') do
        number = Number.new(520)
        expect(number.to_words()).to(eq("five hundred twenty"))
    end

    it('changes all three digit numbers to words') do
        number = Number.new(941)
        expect(number.to_words()).to(eq("nine hundred forty one"))
    end

    it('changes 1000 to words') do
        number = Number.new(1000)
        expect(number.to_words()).to(eq("one thousand"))
    end

    it('changes four digit numbers in the teens to words') do
        number = Number.new(2018)
        expect(number.to_words()).to(eq("two thousand eighteen"))
    end

    it('changes four digit numbers ending in zero to words') do
        number = Number.new(7890)
        expect(number.to_words()).to(eq("seven thousand eight hundred ninety"))
    end

    it('changes all four digit numbers to words') do
        number = Number.new(1234)
        expect(number.to_words()).to(eq("one thousand two hundred thirty four"))
    end

    it('changes five digit numbers where the thousands place is zero to words') do
        number = Number.new(50000)
        expect(number.to_words()).to(eq("fifty thousand"))
    end

    it('changes five digit numbers where the thousands place is in the teens to words') do
        number = Number.new(12345)
        expect(number.to_words()).to(eq("twelve thousand three hundred forty five"))
    end

    it('changes all five digit numbers to words') do
        number = Number.new(98765)
        expect(number.to_words()).to(eq("ninety eight thousand seven hundred sixty five"))
    end

    it('changes six digit numbers to words') do
        number = Number.new(987654)
        expect(number.to_words()).to(eq("nine hundred eighty seven thousand six hundred fifty four"))
    end

    it('changes seven digit numbers to words') do
        number = Number.new(9876543)
        expect(number.to_words()).to(eq("nine million eight hundred seventy six thousand five hundred forty three"))
    end

    it('changes eight digit numbers where millions place is a zero to words') do
        number = Number.new(50000000)
        expect(number.to_words()).to(eq("fifty million"))
    end

    it('changes eight digit numbers where the millions place is in the teens to words') do
        number = Number.new(12345678)
        expect(number.to_words()).to(eq("twelve million three hundred forty five thousand six hundred seventy eight"))
    end

    it('changes all eight digit numbers to words') do
        number = Number.new(98765432)
        expect(number.to_words()).to(eq("ninety eight million seven hundred sixty five thousand four hundred thirty two"))
    end

    it('changes nine digit numbers to words') do
        number = Number.new(987654321)
        expect(number.to_words()).to(eq("nine hundred eighty seven million six hundred fifty four thousand three hundred twenty one"))
    end

    it('changes ten digit numbers to words') do
        number = Number.new(1234567890)
        expect(number.to_words()).to(eq("one billion two hundred thirty four million five hundred sixty seven thousand eight hundred ninety"))
    end
end