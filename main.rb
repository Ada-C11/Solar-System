require_relative "planet"
require_relative "solar_system"

def main
  sun = SolarSystem.new("Sun")
  venus = Planet.new("Venus", "teal", 23534623565, 43563546345, "they claim women are from here, but they are wrong")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "only planet known to support life")
  mars = Planet.new("Mars", "red", 4.972e24, 0.496e8, "rich people want to live here in the future")

  sun.add_planet(venus)
  sun.add_planet(earth)
  sun.add_planet(mars)

  puts "\nWelcome to the solar system simulator!"
  puts "\nWhat would you like to do?"
  puts "List planets"
  puts "Planet details"
  puts "Exit\n\n"

  command = gets.chomp.downcase.capitalize!

  while command != nil
    if command == "List planets"
      list = sun.list_planets
      puts "\n#{list}"
    elsif command == "Planet details"
      puts "Which planet would you like to learn more about?"
      selected_planet = gets.chomp.downcase.capitalize!

      if sun.planets.include?(selected_planet)
        puts selected_planet.summary
      else
        puts "\nSorry, we don't have information on that planet at this time."
      end
    elsif command == "Exit"
      puts "\nAre you sure you want to exit? Please type Y to exit."
      answer = gets.chomp.upcase!
      if answer == "Y"
        break
      end
    else
      puts "\nThat is not a valid command, please try typing a option from the list."
    end

    puts "\nWhat would you like to do next?"
    puts "List planets"
    puts "Planet details"
    puts "Exit\n\n"

    command = gets.chomp.downcase.capitalize!
  end
end

main
