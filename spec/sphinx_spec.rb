require('rspec')
require('sphinx')

describe('#riddle_method') do
  it ("returns not a triangle when two sides are less than the third side") do
    riddle = Riddle.new("gravity")
  expect(riddle.riddle_method).to(eq("You pass!"))
  end

end
