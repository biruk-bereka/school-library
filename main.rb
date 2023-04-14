require_relative './app'
require_relative './book'

class Main
  include App

  def initialize
    @books = []
    @peoples = []
    @rentals = []
  end

  def main
    puts "\n\n"
    puts "Welcome to School Library APP! \n\n"
    print 'Please Choose an option by enerin a number: '
    puts "
        1 - List all books
        2 - List all people
        3 - Create a person (teacher or student, not a plain Person)
        4 - Create a book
        5 - Create a rental
        6 - List all rentals for a given person id
        7 - Exit
        "
    print 'option: '
    option = gets.chomp
    show(option)
  end

  def show(option)
    case option
    when '1'
      list_all_books(@books)
      main
    when '2'
      list_all_peoples(@peoples)
      main
    when '6'
      list_rentals(@rentals, @peoples)
      main
    when '7'
      puts 'Exit'
    else
      create(option)
    end
  end

  def create(option)
    case option
    when '3'
      create_person(@peoples)
      main
    when '4'
      create_book(@books)
      main
    when '5'
      create_rental(@rentals, @books, @peoples)
      main
    end
  end
end

main = Main.new

main.main
