require_relative '../teacher'

describe 'Teacher object' do
  @specialization = 'Data Structure'
  teacher = Teacher.new(32, 'Colt', true)

  context 'Create an instance of the Teacher class' do
    it 'Teacher object' do
      expect(teacher.class) == Teacher
    end
  end
  context 'Create an instance of the Teacher specialization' do
    it 'Teacher' do
      expect(@specialization) == 'Data Structure'
    end
  end
  context 'Teacher can use service' do
    it 'Can use service?' do
      expect(teacher.can_use_services?) == true
    end
  end
end
