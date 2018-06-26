require('rspec')
require('pry')
require('numbers')

describe ('Number#numbers') do
  it("returns a word for a single digit number") do
    num = Number.new(9)
    expect(num.number_to_word()).to(eq("nine"))
  end
  it("returns a word for double digits up to 19") do
    num = Number.new(17)
    expect(num.number_to_word()).to(eq("seventeen"))
  end
  it("returns a ONE for a number 1") do
    num = Number.new(43)
    expect(num.number_to_word()).to(eq("fortythree"))
  end
end
