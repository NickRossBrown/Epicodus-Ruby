require('rspec')
require('pry')
require('prime')

describe ('Prime#prime') do
  it("creates an array from 2 to input") do
    change = Prime.new(4)
    expect(change.return_array_primes()).to(eq([2,3]))
  end
  it("creates an array from 2 to input rejecting all the numbers divisible by 2") do
    change = Prime.new(14)
    expect(change.return_array_primes()).to(eq([2,3,5,7,11,13]))
  end
  it("creates an array from 2 to input rejecting all the numbers divisible by 2") do
    change = Prime.new(35)
    expect(change.return_array_primes()).to(eq([2,3,5,7,11,13,17,19,23,29,31]))
  end
  it("creates an array from 2 to input rejecting all the numbers divisible by 2") do
    change = Prime.new(100)
    expect(change.return_array_primes()).to(eq([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97]))
  end
end
