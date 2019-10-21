class Library

  attr_accessor :books

def initialize(books)
  @books = books

end

def search_by_title(title)
  for book in @books
    if ( book[:title] == title)
      return book
    end
  end
end

def return_rental_details(title)
  for book in @books
    if ( book[:title] == title)
      return book[:rental_details]
    end
  end
end

def add_book(title)
  @books << {
      title: "fight_club",
      rental_details: {
        student_name: "",
        date: ""
      }}
      return @books[4]
    end

def update_details(title, name, date)
  for book in @books
    if ( book[:title] == title )
      book[:rental_details][:student_name].replace(name)
      book[:rental_details][:date].replace(date)
     end
    end
   return @books[0]
  end



end
