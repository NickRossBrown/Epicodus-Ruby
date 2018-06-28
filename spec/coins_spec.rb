require('rspec')
require('pry')
require('coins')

describe ('#coins') do
  it("counts the number of quarters") do
    change = Coins.new(75)
    expect(change.count_coins()).to(eq("3 quarter(s)"))
  end
  it("counts the number of quarters and dimes") do
    change = Coins.new(95)
    expect(change.count_coins()).to(eq("3 quarter(s) 2 dime(s)"))
  end
  it("counts the number of quarters, dimes, nickels") do
    change = Coins.new(90)
    expect(change.count_coins()).to(eq("3 quarter(s) 1 dime(s) 1 nickel(s)"))
  end


end
