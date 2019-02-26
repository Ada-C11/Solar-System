require_relative "planet.rb"
require_relative "solar_system"

def main
    earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  cloudster = Planet.new("Cloudster", "pink", 5, 23, "Hello Kitty Universe planet")
  puffy = Planet.new("Puffy", "periwinkle", 124234, 325623, "Hello Kitte bioverse")
  glitterish = Planet.new("Glitterish", "Surruliean", 35435472, 23513541, "Hello Kitty world with lots of water and grass")
 
  # Solar System 1
  solar_system = SolarSystem.new("Ethereal")
  solar_system.add_planet(earth)
  solar_system.add_planet(cloudster)
  list = solar_system.list_planets
  
  # Solar System 2
  two_solar_system_ = SolarSystem.new("Isometric")
  two_solar_system.add_planet(puffy)
  two_solar_system.add_planet(glitterish)
  two_list = two_solar_system.list_planets

# Control Loop
puts "What would you like to do next? You can choose from: $\ List planets $\ Exit"
answer = gets.chomp 




  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary
end
main

