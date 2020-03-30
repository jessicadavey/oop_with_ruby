class MyCar
  attr_accessor :speed, :color
  attr_reader :year
  
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
end

toyota = MyCar.new(2005, 'gray', 'camry')
toyota.speed_up
toyota.brake
toyota.speed_up
toyota.speed_up
toyota.speed_up
toyota.shut_off

puts toyota.color
puts toyota.year
toyota.color = "green"
puts toyota.color

toyota.spray_paint("turquoise")