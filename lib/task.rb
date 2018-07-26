class Task

  attr_reader(:description, :list_id)

   def initialize(attributes)
     @description = attributes.fetch(:description)
     @list_id = attributes.fetch(:list_id)
   end

   def self.all
       returned_tasks = DB.exec("SELECT * FROM tasks;")
       tasks = []
       returned_tasks.each() do |task|
         description = task.fetch("description")
         list_id = task.fetch("list_id").to_i()
         tasks.push(Task.new({:description => description, :list_id => list_id}))
       end
       tasks
     end

  def save
    # grabs the instance info and saves it into the table in the database
      DB.exec("INSERT INTO tasks (task, list_id) VALUES ('#{@description}', #{@list_id});")
    end

  def ==(another_task)
    self.description().==(another_task.description()).&(self.list_id().==(another_task.list_id()))end


end
