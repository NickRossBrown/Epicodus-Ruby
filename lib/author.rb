class Author

  attr_reader :id
  attr_accessor :author
  def initialize (id, author)
    @id = id
    @author = author
  end

  def self.all
    authors = []
  end
  def save
    result = DB.exec("INSERT INTO authors (author_name) VALUES ('#{@author}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

end
