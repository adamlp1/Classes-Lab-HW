require("minitest/autorun")
require("minitest/rg")
require_relative("../library.rb")

class TestLibrary < MiniTest::Test

  def setup

    @books = [ {
      title: "lord_of_the_rings",
      rental_details: {
       student_name: "Jeff",
       date: "01/12/16"
      }
    },
    {
      title: "casino royale",
      rental_details: {
        student_name: "Mike",
        date: "21/07/1980"
      }
    },
    {
    title: "lord of the flies",
    rental_details: {
      student_name: "Geraldine",
      date: "15/08/2022"
    }
    },
    {
    title: "1984",
    rental_details: {
      student_name: "Francesca",
      date: "22/10/2019"
    }
    }
  ]

  end


def test_book_search
  library = Library.new(@books)
  assert_equal({
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }}, library.books[0])
end

def test_search_by_title
  library = Library.new(@books)
  assert_equal({
      title: "lord_of_the_rings",
      rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
      }}, library.search_by_title("lord_of_the_rings"))
    end
def test_return_rental_details
  library = Library.new(@books)
  assert_equal({
        student_name: "Jeff",
        date: "01/12/16"
      }, library.return_rental_details("lord_of_the_rings"))
    end

def test_add_new_book
    library = Library.new(@books)
    assert_equal({
        title: "fight_club",
        rental_details: {
          student_name: "",
          date: ""
        }}, library.add_book("fight_club"))
      end

def test_update_details
    library = Library.new(@books)
    assert_equal({
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Adam",
          date: "21/10/19"
        }}, library.update_details("lord_of_the_rings", "Adam", "21/10/19"))
      end




end
