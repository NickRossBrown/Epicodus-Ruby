require 'rspec'
require 'pry'
require 'rps'

describe ('play rock paper scissors') do
  it("returns true if rock is the object and paper is the argument") do
    game = RPS.new()
    expect(game.wins?("rock", "paper")).to(eq(false))
  end
end
