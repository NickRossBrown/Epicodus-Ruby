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
  it("returns words for 4 digits up to 9999") do
    num = Number.new(8754)
    expect(num.number_to_word()).to(eq("eight thousand seven hundred fifty-four"))
  end
  it("returns words for 5 digits up to 99999") do
    num = Number.new(19459)
    expect(num.number_to_word()).to(eq("nineteen thousand four hundred fifty-nine"))
  end
  it("returns words for 5 digits up to 99999") do
    num = Number.new(73459)
    expect(num.number_to_word()).to(eq("seventy-three thousand four hundred fifty-nine"))
  end
  it("returns words for 6 digits up to 999999") do
    num = Number.new(576459)
    expect(num.number_to_word()).to(eq("five hundred seventy-six thousand four hundred fifty-nine"))
  end
  it("returns words for 7 digits up to 9999999") do
    num = Number.new(6576459)
    expect(num.number_to_word()).to(eq("six million five hundred seventy-six thousand four hundred fifty-nine"))
  end
  it("returns words for 8 digits up to 99,999,999") do
    num = Number.new(66576459)
    expect(num.number_to_word()).to(eq("sixty-six million five hundred seventy-six thousand four hundred fifty-nine"))
  end
end
