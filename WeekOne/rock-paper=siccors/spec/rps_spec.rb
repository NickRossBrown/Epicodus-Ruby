require 'rspec'
require 'pry'
require 'rps'

describe ('play rock paper scissors') do
  it("returns false if rock is the object and paper is the argument") do
    game = RPS.new('rock')
    expect(game.wins?("paper")).to(eq(false))
  end
  it("returns true if rock is the object and scissors is the argument") do
    game = RPS.new('rock')
    expect(game.wins?("scissors")).to(eq(true))
  end
  it("returns draw if rock is the object and scissors is the argument") do
    game = RPS.new('rock')
    expect(game.wins?("rock")).to(eq('draw'))
  end
  it("returns false if paper is the object and scissors is the argument") do
    game = RPS.new('paper')
    expect(game.wins?("scissors")).to(eq(false))
  end
  it("returns draw if scissors is the object and scissors is the argument") do
    game = RPS.new('scissors')
    expect(game.wins?("scissors")).to(eq('draw'))
  end
  it("returns draw if paper is the object and paper is the argument") do
    game = RPS.new('paper')
    expect(game.wins?("paper")).to(eq('draw'))
  end

end
