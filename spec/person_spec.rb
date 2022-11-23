require_relative '../person'

describe 'Person' do
  context 'Create an instance of Person class' do
    person = Person.new(22, 'Khan', true)

    it 'Take three parameters and return a Person object' do
      expect(person.class) == Person
    end
    it 'Return correct names of person instance variables' do
      expect(person.age).to eq 22
      expect(person.name).to eq 'Khan'
      expect(person.parent_permission).to eq true
    end
  end

  context 'Create an instance of Person class' do
    shams = Person.new(15, 'Shams', false)
    it 'Correct name' do
      expect(shams.correct_name).to eq 'Shams'
    end

    it 'Use Service' do
      expect(shams.can_use_services?).to eq false
    end

    it 'Use Service' do
      shams.age = 25
      expect(shams.can_use_services?).to eq true
    end
  end
end
