require('sinatra')
require('sinatra/reloader')
require('./lib/task')
require('./lib/list')
also_reload('lib/**/*.rb')
require("pg")

DB = PG.connect({:dbname => "to_do_test"})
# change DB back to to_do after testing

# home page
get("/") do
  erb(:index)
end

# listens for click event on /lists/new then directs to list_form.erb
get("/lists/new") do
  erb(:list_form)
end

# listens for a form submission from list_form.erb and posts to success.erb
post("/lists") do
  name = params.fetch("name")
  list = List.new({:name => name, :id => nil})
  list.save()
  erb(:list_success)
 end

# listens for click event on index.erb for /lists and directs to lists.erb
 get('/lists') do
   @lists = List.all()
   erb(:lists)
 end

# listens for click event on lists.erb with /lists/:id route and directs you to that specific list in list.erb
 get("/lists/:id") do
   @list = List.find(params.fetch("id").to_i())
   erb(:list)
 end

 post("/tasks") do
   description = params.fetch("description")
   list_id = params.fetch("list_id").to_i()
   @list = List.find(list_id)
   @task = Task.new({:description => description, :list_id => list_id})
   @task.save()
   erb(:task_success)
 end
