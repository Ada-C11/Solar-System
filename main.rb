require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")

  mercury = Planet.new("Mercury", "dark grey", 3.285e23, 5.791e7, "Named for the messenger of the Roman gods due to its orbital speed")
  solar_system.add_planet(mercury)

  venus = Planet.new("Venus", "red-brown", 4.867e24, 1.082e8, "Both the morning star and the evening star")
  solar_system.add_planet(venus)

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "The densest planet in the solar system")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", "red", 6.4169e23, 2.279e8, "Home to the tallest mountain in the solar system")
  solar_system.add_planet(mars)

  jupiter = Planet.new("Jupiter", "red, white, and brown", 1.898e27, 7.785e8, "The planet with the shortest day in the solar system")
  solar_system.add_planet(jupiter)

  response = nil
  while response != "exit"
    puts "Please enter what you would like to do: "
    response = gets.chomp
    if response == "list planets"
      puts solar_system.list_planets
    elsif response == "planet details"
      puts "Please enter what planet you would like to learn about: "
      planet_choice = gets.chomp
      selected_planet = solar_system.find_planet_by_name(planet_choice)
      puts selected_planet.summary
    end
    puts "Please enter what you would like to do: "
    response = gets.chomp
  end
end

main
