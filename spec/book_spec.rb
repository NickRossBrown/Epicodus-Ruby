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
      binding.pry
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
