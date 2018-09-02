require('rspec')
require('title_case')

describe('#title_case') do
    it('capitalizes every word in a multiple word string') do
        expect(title_case('i am batman')).to(eq("I Am Batman"))
    end
end