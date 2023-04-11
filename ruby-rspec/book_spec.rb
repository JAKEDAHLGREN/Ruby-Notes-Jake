require 'rspec' # we need to ""import" 'rspec'
require_relative 'book.rb' # reference the file we write our code in 
 require_relative 'library.rb' # reference the second file 'library.rb'
# Simple anatomy of atest in RSpec  (to run test: rspec filename)
# describe 'Class' do
#   it 'does stuff' do
#     expect    .matcher   2 different kinds of expect statements. 1 for action, 1 for data
#   end
# end

# describe 'Book' do
#   it 'when a book is instantiated' do
#     expect{ Book.new }.not_to raise_error
#   end
# end


describe 'Book' do
# to refactor and minimize redundancy you can replace all 'Book.new' with @book
  # before :each do
  #   @book = Book.new
  # end

  it 'when a book is instantiated' do
    expect{ Book.new }.not_to raise_error
  end

  it 'has a title' do
    # provide an instance of a Book
    my_book = Book.new   # instantiate a book
    my_book.title = 'Brave New World'   # give my book a title
    expect(my_book.title).to be_a String
    expect(my_book.title).to eq 'Brave New World'
  end
  # Good Failure : NoMethodError:
#                   undefined method `title=' for #<Book:0x0000000107128da8>

  it 'has an author' do
    my_book = Book.new
    my_book.author = 'Aldous Huxley'
    expect(my_book.author).to be_a String
    expect(my_book.author).to eq 'Aldous Huxley'
  end
#  Good Failure
#   NoMethodError:
#        undefined method `author=' for #<Book:0x0000000107d126f0 @title=nil>
#      # ./book_spec.rb:33:in `block (2 levels) in <top (required)>'

  it 'starts on page 1' do
    my_book = Book.new
    expect(my_book.page).to eq 1
    expect(my_book.page).to be_a Integer
  end

  it 'can read pages' do
    my_book = Book.new
    expect{ my_book.read 5}.to change { my_book.page}.from(1).to(6)
  end
end

  describe 'Library' do
    it 'has to be real' do
      expect{ Library.new}.not_to raise_error
    end

    it 'has an array of books' do
      my_library = Library.new
      expect(my_library.book_collection).to be_a Array
    end

    it 'can add books to the array' do
      brave = Book.new
      hamlet = Book.new
      my_library = Library.new
      my_library.add_books brave
      my_library.add_books hamlet
      expect(my_library.book_collection).not_to be_empty
      expect(my_library.book_collection).to contain_exactly(brave, hamlet) 
    end
  end



