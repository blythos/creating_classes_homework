require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup()
    @books = Library.new([{
      title: "harry_potter",
      rental_details: {
        student_name: "Jeff",
        date: "29/03/19"
      }
    },
    {
      title: "the_conquest_of_bread",
      rental_details: {
        student_name: "Annie",
        date: "10/05/19"
      }
    },
    {
      title: "how_to_make_friends_and_influence_people",
      rental_details: {
        student_name: "Abed",
        date: "07/04/19"
      }
    },
    {
      title: "a_bell_hooks_primer",
      rental_details: {
        student_name: "Britta",
        date: "01/12/19"
      }
      }])
    end

    def test_get_books

      assert_equal(4, @books.get_books.length)

    end

    def test_get_book_info

      # Double checking because I'm paranoid.
      assert_equal("harry_potter", @books.get_book_info("harry_potter")[:title])
      assert_equal("Britta", @books.get_book_info("a_bell_hooks_primer")[:rental_details][:student_name])

    end

    def test_get_rental_details

      assert_equal("Annie", @books.get_rental_info("the_conquest_of_bread")[:student_name])

    end



end
