module Haulable
  def haul
    puts "I'm pulling a trailer!"
  end
end

class Vehicle
  @@number_of_vehicles = 0
  
  attr_accessor :speed, :color
  attr_reader :year, :model
  
  def self.gas_mileage(miles, gals)
    puts "Your vehicle gets #{miles/gals} mpg."
  end
  
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
    
    @@number_of_vehicles += 1
  end
  
  def speed_up
    self.speed += 10
    puts speed
  end
  
  def brake
    self.speed -= 10
    puts speed
  end
  
  def shut_off
    self.speed = 0
    puts speed
  end
  
  def self.how_many
    puts "There are #{@@number_of_vehicles} vehicles."
  end
  
  def age
    calculate_age
  end
  
  private
  
  def calculate_age
    Time.now.year - self.year
  end

end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def spray_paint(color)
    puts "Your car was #{self.color}"
    self.color = color
    puts "Your car is now #{self.color}"
  end
  
  def to_s
    "Your car is a #{self.color} #{self.year} #{self.model}.  Nice!"
  end

end

class MyTruck < Vehicle
  include Haulable
  FOUR_WHEEL_DRIVE = true
end

toyota = MyCar.new(2005, "gray", "Toyota Camry")
truck = MyTruck.new(1997, "red", "Ford F150")

puts toyota.age