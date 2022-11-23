require_relative '../student'
require_relative '../classroom'

describe 'Student' do
  before :each do
    @label = 119
    @age = 13
    @name = 'Fawad'
    @parent_permission = false
    @student = Student.new(@label, @age, @name, @parent_permission)
    @classroom = Classroom.new(@label)
  end
  it 'Play hooky' do
    expect(@student.play_hooky).to eq '¯(ツ)/¯'
  end
  it 'Classroom' do
    expect(@classroom).to be_an_instance_of Classroom
  end
end
