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

end
