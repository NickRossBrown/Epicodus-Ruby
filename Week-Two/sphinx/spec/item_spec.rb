require('rspec')
require('item')

describe(".find") do
    it("finds an item based on its id") do
      item = Item.new("tacos")
      item.save()
      item2 = Item.new("pizza")
      item2.save()
      expect(Item.find(1)).to(eq(item))
      expect(Item.find(2)).to(eq(item2))
    end
  end
