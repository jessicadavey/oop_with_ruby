# How do we create an object in Ruby? Give an example of the creation of an object.

class Person # reserved word 'class', then class name in CamelCase (file name in snake_case)
end # ends with end

jessica = Person.new # call 'new' method on the class to create an instance of the class (object)

puts jessica.class