# What is a module? What is its purpose? How do we use them with our classes? 
# Create a module for the class you created in exercise 1 and include it properly.

# A module is a set of behaviors that can be made available to multiple classes

# use reserved word 'module'
module Chant
  def chant  # define a method
    puts "Hare Krishna!"
  end
end

class Person 
  include Chant  # use 'include' method
end

jessica = Person.new
jessica.chant # call the method

