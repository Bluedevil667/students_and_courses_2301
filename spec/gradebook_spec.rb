require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do
  it 'exists' do
    gradebook = Gradebook.new("Logan")
    expect(gradebook).to be_a Gradebook
  end

  it 'has attributes' do 
    gradebook = Gradebook.new("Logan")
    expect(gradebook.instructor).to eq("Logan")
  end

  it 'can add courses' do
    gradebook = Gradebook.new("Logan")
    course_1 = Course.new("Calculus", 2)

    expect(gradebook.add_course(course_1)).to eq(gradebook.courses)
  end

  it 'can have students in course' do
    gradebook = Gradebook.new("Logan")
    course_1 = Course.new("Calculus", 2)
    gradebook.add_course(course_1)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course_1.enroll(student1)
    course_1.enroll(student2)
    expect(gradebook.courses[0].students).to eq([student1, student2])
  end

  it 'can return all students below' do
    gradebook = Gradebook.new("Logan")
    course_1 = Course.new("Calculus", 2)
    gradebook.add_course(course_1)
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    student1.log_score(40)
    student1.log_score(60)
    student2.log_score(90)
    student2.log_score(95)
    course_1.enroll(student1)
    course_1.enroll(student2)
    require 'pry'; binding.pry
    expect(gradebook.students_below).to be_a(Array)
  end
end