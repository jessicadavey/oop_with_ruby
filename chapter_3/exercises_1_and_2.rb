class MyCar
  attr_accessor :speed, :color
  attr_reader :year, :model
  
  def self.gas_mileage(miles, gals)
    puts "Your car gets #{miles/gals} mpg."
  end
  
  def initialize(y, c, m)
    @year = y
    @color = c
    @model = m
    @speed = 0
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
  
  def spray_paint(color)
    puts "Your car was #{self.color}"
    self.color = color
    puts "Your car is now #{self.color}"
  end
  
  def to_s
    "Your car is a #{self.color} #{self.year} #{self.model}.  Nice!"
  end
end

MyCar.gas_mileage(100, 5)

toyota = MyCar.new(2005, "gray", "Toyota Camry")
puts toyota

