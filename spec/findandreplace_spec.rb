require 'findandreplace'
require 'rspec'
require 'pry'

describe ('find and replace') do
  it "finds and replaces words in a string" do
    sentence = Words.new("Hello world")
    expect(sentence.replace()).to(eq("Hello universe"))
  end
  it "finds the word cat and replaces letters with dog" do
    sentence = Words.new("I am walking my cat to the cathedral.")
    expect(sentence.replace()).to(eq("I am walking my dog to the doghedral."))
  end
end
