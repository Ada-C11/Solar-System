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

  puts "Welcome to the Solar System Simulator!"

  print "\nWhat would you like to do next? (list planets, planet details, add planet, exit): "
  user_choice = gets.chomp

  until user_choice == "exit"
    case user_choice
    when "list planets"
      list = solar_system.list_planets
      puts list
    when "planet details"
      solar_system.planet_details
    when "add planet"
      solar_system.new_planet
    end
    print "\nWhat would you like to do next? (list planets, planet details, add planet, exit): "
    user_choice = gets.chomp
  end
end

main
