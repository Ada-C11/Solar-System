# Add another file, main.rb

# Should require planet.rb
# Should contain one method called 'main'
# 'main' method should
#   - create two different instances of Planet
#   - print out some of their attributes

require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red", 6.41693e23, 1.524, "Robots live here!")

  #   puts "#{earth.name} is a beautiful #{earth.color} marble in space.  Fun fact: #{earth.fun_fact}"
  #   puts "#{mars.name} is a beautiful #{mars.color} marble in space.  Fun fact: #{mars.fun_fact}"

  puts earth.summary
  puts mars.summary
end

main

solar_system = SolarSystem.new("Sol")

earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
earth2 = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
mars = Planet.new("Mars", "red", 6.41693e23, 1.524, "Robots live here!")
solar_system.add_planet(earth)
solar_system.add_planet(mars)
# Duplicate Earth for testing
solar_system.add_planet(earth2)

list = solar_system.list_planets
puts list

found_planet = solar_system.find_planet_by_name("Earth")

# found_planet is an instance of class Planet
puts
puts found_planet
found_planet.each { |planet| puts planet.summary }

# There's no planet with a given name
found_planet = solar_system.find_planet_by_name("Venus")
