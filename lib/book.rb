class Book

  attr_reader :id
  attr_accessor :author, :title, :available, :return_date, :patron_id
  def initialize (id, author, title, available, return_date, patron_id)
    @id = id
    @author = author
    @title = title
    @available = available
    @return_date = return_date
    @patron_id = patron_id
  end

  def self.all
    books = []
  end

end
