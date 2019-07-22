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

  def add_new_book(title)
    new_book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books.push(new_book)

  end

  def update_book_details(title, student, date)
    for book in @books
      if book[:title] == title
        book[:rental_details][:student_name] = student
        book[:rental_details][:date] = date
      end
    end
  end
  
end
