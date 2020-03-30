class Person
  attr_reader :name # fix the error by making this attr_accessor
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"  # there is no setter method name=, so this gives an error