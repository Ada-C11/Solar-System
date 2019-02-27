require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Solar System")

  mercury = Planet.new("Mercury", "gray", 3.285e23, 5.791e7, "A year here is only 88 days")
  venus = Planet.new("Venus", "opal", 4.867e24, 1.082e8, "It rotates in the opposite direction to other planets")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "It is the only planet known to support life")
  mars = Planet.new("Mars", "red", 6.39e23, 2.279e8, "It has the tallest mountain known in the solar system")
  jupiter = Planet.new("Jupiter", "tan", 1.898e27, 7.785e8, "It's moon, Ganymede, is the largest moon in the Solar System")
  saturn = Planet.new("Saturn", "brownish", 5.683e26, 1.434e9, "It has 62 moons")
  uranus = Planet.new("Uranus", "blue", 8.681e25, 2.871e9, "It hits the coldest temperatures of any planet")
  neptune = Planet.new("Neptune", "purple", 1.024e26, 4.495e9, "It has an extremely active climate with many storms")

  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

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
