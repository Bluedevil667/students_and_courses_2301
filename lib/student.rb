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
    sum = scores.sum
    count = scores.count
    grade = sum.to_f / count.to_f
    grade
  end
end
