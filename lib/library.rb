class Library
  attr_reader :books

  def initialize
    @books = []
  end

  def add_to_collection(title)
    @books << title
  end

  def card_catalogue
    @books.map do |book|
      book.last_name.sort
    end
  end

end
