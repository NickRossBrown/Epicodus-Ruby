require("spec_helper")
require 'pry'

describe(Book) do
  describe(".all") do
    it("starts off with no books") do
      expect(Book.all()).to(eq([]))
    end
  end
  describe("#save") do
    it("inserts a book into the database") do
      book = Book.new({:id => nil, :author => "tom", :title => "Huck Finn", :available => "t", :return_date => "2018-07-29", :patron_id => 0})
      book.save
      expect(Book.all()).to(eq(book))
    end
  end
  describe("#==") do
  it("is the same book if it has the same name") do
    book1 = Book.new({:title => "Epicodus stuff", :id => nil})
    book2 = Book.new({:title => "Epicodus stuff", :id => nil})
    expect(book1).to(eq(book2))
  end
end

describe("#update") do
  it("updates the name of book in the book database") do
    book = Book.new({:author => "Huck Fin"})
    book.save()
    book.update({:author => "John"})
    # book.update({:name => "I ROBOT"})
    expect(book.author()).to(eq("John"))
  end
end

describe("#delete") do
  it("lets you delete a book from book the database") do
    book = Book.new({:author => "Oceans Eleven", :id => nil})
    book.save()
    book2 = Book.new({:author => "Oceans Twelve", :id => nil})
    book2.save()
    book.delete()
    expect(Book.all()).to(eq([book2]))
  end
end
describe("#search") do
  it("lets you search for a book by its author or title from book in the database") do
    book = Book.new({ :author => "tom", :title => "Huck Finn", :available => "t", :return_date => "2018-07-29", :patron_id => 0})
    book.save()
    book2 = Book.new({ :author => "eric", :title => "Ocean is Big", :available => "t", :return_date => "2018-08-21", :patron_id => 2})
    book2.save()
    expect(book2.search("tom")).to(eq([book]))
  end
end

end
# describe(Author) do
#   describe(".all") do
#     it("starts off with no authors") do
#       expect(Author.all()).to(eq([]))
#     end
#   end
#   describe("#save") do
#     it("inserts a author into the database") do
#       # expect(Author.all()).to(eq([]))
#     end
#   end

# end
