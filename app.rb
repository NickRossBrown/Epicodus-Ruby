require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphinx')
require('pry')

get ('/')do
  @description = "Answer the Sphinx's riddles to pass"
  erb(:input)
end
post ('/output')do
  @riddle_one = params.fetch("answer_one")

riddle = Riddle.new(@riddle_one)
  @riddle_output = riddle.riddle_method()
  erb(:output)
end
