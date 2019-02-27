require_relative "planet"
require_relative "solar_system"

def main
  # creating solarsystem and planets
  sun = SolarSystem.new("Sun")
  venus = Planet.new("Venus", "teal", 23534623565, 43563546345, "they claim women are from here, but they are wrong")
  earth = Planet.new("Earth", "blue-green", 56354677465487, 14624573674526, "only planet known to support life")
  mars = Planet.new("Mars", "red", 4674567655, 2457365426, "rich people want to live here in the future")

  # adding planets to solarsystem
  sun.add_planet(venus)
  sun.add_planet(earth)
  sun.add_planet(mars)

  # displays welcome and options menu to user
  puts "\nWelcome to the solar system simulator!"
  puts "\nWhat would you like to do?"
  puts "List planets"
  puts "Planet details"
  puts "Add planet"
  puts "Exit\n\n"

  # takes user input
  command = gets.chomp.capitalize!

  # determines program response based on user input
  while command != nil
    if command == "List planets" # lists planets in solarsystem
      list = sun.list_planets
      puts "\n#{list}"
    elsif command == "Planet details" # displays details about specific planet
      puts "Which planet would you like to learn more about?"
      selected_planet = gets.chomp.capitalize!
      found_planet = sun.find_planet_by_name(selected_planet)
      if found_planet != nil
        puts "\n#{found_planet.summary}"
      else
        puts "\nSorry, we don't have information on that planet at this time."
      end
    elsif command == "Add planet" # adds new planet to solar system
      new_planet_name = ""
      while new_planet_name == ""
        puts "Please name the planet you would like to add."
        new_planet_name = gets.chomp
      end

      new_planet_color = ""
      while new_planet_color == ""
        puts "Please enter the planet color."
        new_planet_color = gets.chomp
      end

      new_planet_mass = ""
      while new_planet_mass == ""
        puts "Please enter the mass of the planet in kg."
        new_planet_mass = gets.chomp
      end

      new_planet_distance_from_sun = ""
      while new_planet_distance_from_sun == ""
        puts "Please enter this planet's distance from the sun in km."
        new_planet_distance_from_sun = gets.chomp
      end

      new_planet_fun_fact = ""
      while new_planet_fun_fact == ""
        puts "Please enter a fun fact about this planet."
        new_planet_fun_fact = gets.chomp
      end

      new_planet_info = Planet.new(new_planet_name, new_planet_color, new_planet_mass, new_planet_distance_from_sun, new_planet_fun_fact)
      sun.add_planet(new_planet_info)
    elsif command == "Exit" # exits program
      puts "\nAre you sure you want to exit? Please type Y to exit."
      answer = gets.chomp.upcase!
      if answer == "Y"
        break
      end
    else
      puts "\nThat is not a valid command, please try typing a option from the list."
    end

    # lists user options
    puts "\nWhat would you like to do next?"
    puts "List planets"
    puts "Planet details"
    puts "Add planet"
    puts "Exit\n\n"

    # gets user input
    command = gets.chomp.capitalize!
  end
end

# runs code
main
