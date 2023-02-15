class Gradebook
  attr_reader :instructor,
              :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
    @students_below = []
  end

  def add_course(course)
    @courses << course
  end

  def students_below
    @courses.each do |course|
      students = course.students
      students.each do |student|
        if student.grade <= 60
          @students_below << student
        end
      end
    end
    @students_below
  end
end
