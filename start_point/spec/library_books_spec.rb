require('minitest/autorun')
require('minitest/rg')
require_relative('../library_books')

class TestLibrary < MiniTest::Test

  def setup
    @book1 = {
      title: "Lord of the rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/05/18"
      }
    }
    @book2 = {
      title: "War and Peace",
      rental_details: {
        student_name: "Alan",
        date: "04/04/18"
      }
    }
    @book3 = {
      title: "The Idiot",
      rental_details: {
        student_name: "Billy",
        date: "22/02/18"
      }
    }
    @library = Library.new([@book1, @book2, @book3])
  end

  def test_get_book_info
    book_info = @library.get_book_info("Lord of the rings")
    assert_equal(book_info, @book1)
  end

  def test_get_book_rental_details
    book_rental_details = @library.get_book_rental_details("The Idiot")
    assert_equal(book_rental_details, @book3[:rental_details])
  end

  def test_add_book
    @library.add_book("Men without women")
    book = @library.get_book_info("Men without women")
    expected_book = {
      title: "Men without women",
      rental_details: {
        student_name: "",
        date: ""
      }
    }
    assert_equal(book, expected_book)
  end

  def test_update_rental_details
    @library.update_rental_details("The Idiot", "Maria", "1/1/18")

    new_book_rental_details = @library.get_book_rental_details("The Idiot")
    expected_rental_details = {
      student_name: "Maria",
      date: "1/1/18"
    }
    assert_equal(new_book_rental_details, expected_rental_details)
  end
end
