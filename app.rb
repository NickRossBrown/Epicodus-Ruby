require 'sinatra'
require 'sinatra/reloader'
also_reload 'lib/**/*.rb'
require('./lib/item')
require('pry')

get('/') do
  @list = Item.all()
  erb(:input)
end

post('/') do
  name = params["name"]
  item = Item.new(name)
  item.save()
  @list = Item.all()
  erb(:input)
end

# post ('/runClear') do
#   if params[:clear_btn] == "clear"
#     @@item = []
#   end
# end

get ('/items/:id') do
  @item = Item.find(params[:id])
  erb(:output)
end

# post('/output') do
#   name = params["name"]
#   item = Item.new(name)
#   item.save()
#   @list = Item.all()
#   erb(:output)
# end
