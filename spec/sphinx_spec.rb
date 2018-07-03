require('rspec')
require('sphinx')

describe('#riddle_method') do
  it ("returns a pass when one answers GRAVITY") do
    riddle = Riddle.new("gravity", "time", "teeth")
  expect(riddle.riddle_method).to(eq("You pass!"))
  end
  it ("returns a pass when one answers TIME") do
    riddle = Riddle.new("gravity", "time", "tooth")
  expect(riddle.riddle_method).to(eq("Fail!"))
  end
  it ("returns a pass when one answers TIME") do
    riddle = Riddle.new("gravity", "time", "Teeth")
  expect(riddle.riddle_method).to(eq("You pass!"))
  end

end
