require 'findandreplace'
require 'rspec'
require 'pry'

describe ('find and replace') do
  it "finds and replaces words in a string" do
    sentence = Words.new("Hello world")
    expect(sentence.replace()).to(eq("Hello universe"))

  end
end
