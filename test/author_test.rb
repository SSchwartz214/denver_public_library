require './test/test_helper'
require './lib/author'
require './lib/book'

class AuthorTest < Minitest::Test
  def test_it_exists
    book = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_instance_of Author, book
  end

  def test_it_has_attributes
    author = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte", author.first_name
    assert_equal "Bronte", author.last_name
  end

  def test_it_starts_with_no_books
    author = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], author.books
  end

  def test_it_can_add_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book_1 = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Jane Eyre", publication_date: "October 16, 1847"})
    book_2 = Book.new({author_first_name: "Charlotte", author_last_name: "Bronte", title: "Villette", publication_date: "1853"})

    charlotte_bronte.add_book("Jane Eyre", "October 16, 1847")

    assert_instance_of Book, charlotte_bronte.books.last

    charlotte_bronte.add_book("Villette", "1853")

    assert_instance_of Book, charlotte_bronte.books.last
  end
end
