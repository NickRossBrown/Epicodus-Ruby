require 'sinata'
require 'sinata/reloader'
also_reload 'lib/**/*.rb'
require('./lib/sphinx')
require('pry')

get ('/') do
  # update description
  @description = "the @description input in app.rb"
end
post ('/output')do
# update output_one
  @output_one = params.fetch(@favorite_thing_one)
end
 favorite = Favorites.new(@output_one)
  @favorite_output_one = favorite.favorite_things()
  erb(:output)
end
