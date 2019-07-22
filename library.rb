class Library

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def get_book_info(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def get_rental_info(title)
    return get_book_info(title)[:rental_details]
  end
end
