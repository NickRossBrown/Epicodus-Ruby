require('rspec')
require('pry')
require('allergies')

describe ('#allergies') do
  it("creates an array from 2 to input") do
    allergies = Alergy.new(128)
    expect(allergies.find_alergins()).to(eq(["cats"]))
  end
  it("creates an array from 2 to input") do
    allergies = Alergy.new(192)
    expect(allergies.find_alergins()).to(eq(["cats", "pollen"]))
  end
  it("creates an array from 2 to input") do
    allergies = Alergy.new(224)
    expect(allergies.find_alergins()).to(eq(["cats", "pollen","chocolate"]))
  end
  it("creates an array from 2 to input") do
    allergies = Alergy.new(240)
    expect(allergies.find_alergins()).to(eq(["cats", "pollen","chocolate","tomatoes"]))
  end
  it("creates an array from 2 to input") do
    allergies = Alergy.new(255)
    expect(allergies.find_alergins()).to(eq(["cats", "pollen","chocolate","tomatoes","strawberries", "shellfish", "peanuts", "eggs"]))
  end
  it("creates an array from 2 to input") do
    allergies = Alergy.new(82)
    expect(allergies.find_alergins()).to(eq([ "pollen", "tomatoes", "peanuts"]))
  end
end
