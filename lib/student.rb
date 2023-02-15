class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(student_attributes)
    @name = student_attributes[:name]
    @age = student_attributes[:age]
    @scores = []
  end

  def log_score(score)
    @scores << score
  end

  def grade
    
  end
end
