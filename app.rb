ENV['RACK_ENV'] = 'test'
require('sinatra')
require('sinatra/reloader')
require('sinatra/activerecord')
also_reload('lib/**/*.rb')
require('./lib/employee')
require('./lib/division')
require("pg")
require("pry")
