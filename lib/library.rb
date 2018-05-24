class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(title)
    @books << title
  end

  def card_catalogue
    @books.flatten.map do |book|
      book.author_last_name.sort
    end
  end

end
