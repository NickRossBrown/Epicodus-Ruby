require('rspec')
require('pry')
require('coins')

describe ('Prime#prime') do
  it("creates an array from 1 to input") do
    change = Prime.new(4)
    expect(change.count_coins()).to(eq([1,2,3,4,]))
  end
end
