require 'findandreplace'
require 'rspec'
require 'pry'

describe ('find and replace') do
  it "finds and replaces words in a string" do
    sentence = Words.new()
    expect(sentence.replace("Hello world")).to(eq("Hello universe"))

  end
end
