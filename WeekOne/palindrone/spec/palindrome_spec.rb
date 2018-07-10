require 'rspec'
require 'pry'
require 'palindrome'

describe ('palindrome') do
  it ("1 checks to see if a word is a palindrome and returns true it is a palindrome") do
    variable = Palindrome.new("civic")
    expect(variable.palindrome?()).to(eq(true))
  end
  it ("1 checks to see if a word is a palindrome and returns false it is a palindrome") do
    variable = Palindrome.new("Reese")
    expect(variable.palindrome?()).to(eq(false))
  end
  it ("check to see if an integer is a palindrome") do
    variable = Palindrome.new("12321")
    expect(variable.palindrome?()).to(eq(true))
  end
  it ("check to see if multiple words") do
    variable = Palindrome.new("a man a plan a canal panama")
    expect(variable.palindrome?()).to(eq(true))
  end
end
