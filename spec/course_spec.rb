require './lib/course'
require './lib/student'

RSpec.describe Course do
  it 'exists' do
    course_1 = Course.new("Calculus", 2)
    expect(course_1).to be_a Course
  end

  it 'course has attributes' do
    course_1 = Course.new("Calculus", 2)
    expect(course_1.name).to eq("Calculus")
    expect(course_1.capacity).to eq(2)
    expect(course_1.students).to eq([])
  end

  it 'full? method works' do
    course_1 = Course.new("Calculus", 2)
    expect(course_1.full?).to be false
    student1 = Student.new({name: "Morgan", age: 21})
    student2 = Student.new({name: "Jordan", age: 29})
    course_1.enroll(student1)
    course_1.enroll(student2)
    expect(course_1.full?).to be true
    require 'pry'; binding.pry
  end
end