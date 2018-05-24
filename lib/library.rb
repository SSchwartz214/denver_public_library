class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(title)
    @books << title
  end

  def card_catalogue
    @books.sort_by do |book|
      book.author_last_name
    end
  end

  def author_name(book)
    "book.author_first_name + book.author_last_name"
  end

  def find_by_author(author)
    @books.find_all do |book|
      author_name(author) == author
    end
  end

  def find_by_publication_date(publication_date)
    @books.find_all do |book|
      book.publication_date == publication_date
    end
  end


end
