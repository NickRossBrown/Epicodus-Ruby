class Book

  attr_reader :id
  attr_accessor :author, :title, :available, :return_date, :patron_id
  def initialize (params)
    params = defaults.merge(params)
    @id = params.fetch(:id)
    @author = params.fetch(:author)
    @title = params.fetch(:title)
    @available = params.fetch(:available)
    @return_date = params.fetch(:return_date)
    @patron_id = params.fetch(:patron_id)
  end

  def defaults
    {:id=>0,:author => "none", :title => "none", :available=> "t", :return_date =>"2018-09-09", :patron_id => 0}
  end

  def self.all
    all_books = DB.exec("SELECT * FROM book;")
    books = []
    all_books.each() do |book|
      title = book.fetch("title")
      id = book.fetch("id").to_i()
      author = book.fetch("author")
      available = book.fetch("available")
      patron_id = book.fetch("patron_id").to_i
      return_date = book.fetch("return_date")
      books.push(Book.new({:title => title, :id => id, :author => author,:available=> available, :return_date =>return_date, :patron_id => patron_id}))
    end
    books
  end

  def search(parameter)
    results = DB.exec("SELECT * FROM book WHERE author = '#{parameter}' OR title LIKE '%#{parameter}%';")
    books = []
    results.each() do |book|
      title = book.fetch("title")
      id = book.fetch("id").to_i()
      author = book.fetch("author")
      available = book.fetch("available")
      patron_id = book.fetch("patron_id").to_i
      return_date = book.fetch("return_date")
      books.push(Book.new({:title => title, :id => id, :author => author,:available=> available, :return_date =>return_date, :patron_id => patron_id}))
    end
    books
  end

  def save
    result = DB.exec("INSERT INTO book (title, author, available, patron_id, return_date) VALUES ('#{@title}', '#{@author}', '#{@available}', #{@patron_id}, '#{@return_date}') RETURNING id;")
    @id = result.first().fetch("id").to_i()
  end

  def ==(another_book)
    self.title().==(another_book.title()).&(self.id().==(another_book.id()))
  end

  def delete
    DB.exec("DELETE FROM book WHERE id = '#{@id}';")
  end

  def update (attributes)

    @author = attributes.fetch(:author, @author)
    @title = attributes.fetch(:title, @title)
    @available = attributes.fetch(:available, @available)
    @return_date = attributes.fetch(:return_date, @return_date)
    @patron_id = attributes.fetch(:patron_id, @patron_id)
    @id = self.id()
    DB.exec("UPDATE book SET author = '#{@author}', title = '#{@title}',  available = '#{@available}', return_date = '#{@return_date}', patron_id = '#{@patron_id}'  WHERE id = #{@id};")

  end




end
