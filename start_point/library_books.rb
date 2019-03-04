class Library

  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def get_book_info(title)
    for book in @books
      if title == book[:title]
        return book
      end
    end
  end

  def get_book_rental_details(title)
    for book in @books
      if title == book[:title]
        return book[:rental_details]
      end
    end
  end

  def add_book(title)
    book = {
      title: title,
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    @books << book
  end

  def update_rental_details(title, student_name, date)
    rental_details = get_book_rental_details(title)
    rental_details[:student_name] = student_name
    rental_details[:date] = date
  end
end
