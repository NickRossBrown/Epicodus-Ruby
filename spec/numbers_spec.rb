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
  it("returns a word for double digits over 19 to 99") do
    num = Number.new(43)
    expect(num.number_to_word()).to(eq("forty-three"))
  end
  it("returns words for triple digits up to 999") do
    num = Number.new(256)
    expect(num.number_to_word()).to(eq("two hundred fifty-six"))
  end
end
