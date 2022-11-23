require_relative '../book'
require_relative '../classroom'
require_relative '../teacher'
require_relative '../student'
require_relative '../rental'

describe Book do
  title = "Waris' Life"
  author = 'Waris'
  context 'Book is created:' do
    it 'Create a book as an instance of Book' do
      book = Book.new(title, author)
      expect(book).to be_an_instance_of Book
    end
  end

  context 'When title and author are instances of a book:' do
    book = Book.new(title, author)
    it 'Book title to equal the title' do
      expect(book.title).to eq "Waris' Life"
    end

    it 'Book author to equal the author' do
      expect(book.author).to eq 'Waris'
    end
  end

  context 'When someone rents a book:' do
    book = Book.new(title, author)
    classroom = Classroom.new('Sem 1')
    student = Student.new(classroom, 1, 'Fawad', true)
    it 'Rentals count to be zero(0) on start of project' do
      expect(book.rentals.length).to eq 0
    end

    it 'Add rentals' do
      Rental.new('2022/11/23', book, student)
      expect(book.rentals.length).to eq 1
    end
  end
end
