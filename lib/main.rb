require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  saturn = Planet.new("Saturn", "brownish", 6.01e24, 2.4e8, "some fact")
  mars = Planet.new("Mars", "red", 7e2, 2e8, "it's small")

  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)
  solar_system.add_planet(mars)

  list = solar_system.list_planets

  puts "Welcome to the Solar System Simulator!"

  print "\nWhat would you like to do next? (list planets, exit): "
  user_choice = gets.chomp

  #   if user_choice == "list planets"
  #     puts list
  #   elsif user_choice == "exit"
  #     puts "Thanks for stopping by!"
  #   else
  #     print "\nWhat would you like to do next? (list planets, exit): "
  #     user_choice = gets.chomp
  #   end

  while user_choice = gets.chomp # loop while getting user input
    case user_choice
    when "list planets"
      puts list
    when "exit"
      puts "Thanks for stopping by!"
      break
    else
      print "What would you like to do next? (list planets, exit): "
    end
  end

  #   earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  #   #   puts earth.summary

  #   saturn = Planet.new("Saturn", "brownish", 6.01e24, 2.4e8, "some fact")
  #   #   puts saturn.summary

  #   solar_system = SolarSystem.new("Sol")
  #   solar_system.add_planet(earth)
  #   solar_system.add_planet(saturn)

  #   list = solar_system.list_planets
  #   puts list

  #   found_planet = solar_system.find_planet_by_name("Earth")

  #   # found_planet is an instance of class Planet
  #   puts found_planet
  #   # => #<Planet:0x00007fe7c2868ee8>

  #   puts found_planet.summary
end

main
