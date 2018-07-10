require('rspec')
require('triangle')

describe('#triangle_finder') do
  it ("returns not a triangle when two sides are less than the third side") do
    triangle = Triangle.new(2,2,8)
  expect(triangle.triangle_finder).to(eq("Not a Triangle dummy"))
  end
  it ("returns Equilateral triangle when all three sides are equal") do
    triangle = Triangle.new(8,8,8)
  expect(triangle.triangle_finder).to(eq("Equilateral Triangle Dummy"))
  end
  it ("returns Isosceles triangle when two sides are equal") do
    triangle = Triangle.new(8,6,6)
  expect(triangle.triangle_finder).to(eq("Isosceles Triangle Dummy"))
  end
  it ("returns scalene triangle when no sides are equal") do
    triangle = Triangle.new(8,6,9)
  expect(triangle.triangle_finder).to(eq("Scalene Triangle Dummy"))
  end
end
