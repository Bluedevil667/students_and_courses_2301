require './lib/student'

RSpec.describe Student do
  it 'exists' do
    student_1 = Student.new({})
    expect(student_1).to be_a Student
  end

  it 'can have attributes' do
    student_1 = Student.new({name: "Morgan", age: 21})

    expect(student_1.name).to eq("Morgan")
    expect(student_1.age).to eq(21)
    expect(student_1.scores).to eq([])
  end

  it 'can log scores' do
    student_1 = Student.new({name: "Morgan", age: 21})
    log_score_1 = student_1.log_score(89)
    expect(log_score_1).to eq([89])
    log_score_2 = student_1.log_score(78)
    expect(log_score_2).to eq([89, 78]) 
    expect(student_1.scores).to eq([89, 78])
  end

  it 'can find average of scores array' do
    student_1 = Student.new({name: "Morgan", age: 21})
    student_1.log_score(89)
    log_score_2 = student_1.log_score(78)

    expect(student_1.grade).to eq(83.5)
  end
end