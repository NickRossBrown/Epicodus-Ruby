class Item
  @@list = []
  attr_reader :id
  attr_accessor :name

  def initialize(name)
    @name = name
    @id = @@list.length + 1
  end

  def self.all()
    @@list
  end

  def self.find(name)
  end

  def save()
      @@list.push(self)
  end

  def self.clear()
    @@list = []
  end
end
