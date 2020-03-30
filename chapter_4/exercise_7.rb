class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end
  
  def better_grade_than?(student)
    get_grade > student.get_grade
  end
  
  protected
  
  def get_grade
    @grade
  end
end

joe = Student.new("Joe", 95)
bob = Student.new("Bob", 75)

p joe.better_grade_than?(bob)


