
require('sinatra')
require('sinatra/reloader')
require('./lib/patron')
require('./lib/book')
also_reload('lib/**/*.rb')
require("pg")
require 'pry'
DB = PG.connect({:dbname => "library"})

get ('/') do
  erb(:index)
end

get ('/librarian') do
  erb(:librarian)
end
post ('/librarian') do
  author = params.fetch("author")
  title = params.fetch("title")
  book = Book.new({:author=>author,:title=>title})
  book.save

  erb(:librarian)
end
get ('/library_books') do

  erb(:library_books)
end

post ('/library_books') do
  @books = Book.all

  erb(:library_books)
end

get ('/patron') do
  erb(:patron)
end
