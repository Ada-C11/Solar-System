require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Big Ol Pupper")
  waffles = Planet.new("Waffles", "\'maple syrup\' brown", 3.555e23, 1.273e12, "It is the only known " \
  "planet to be smothered in fried chicken")
  cuddles = Planet.new("Cuddles", "soft velvet grey", 9.973e30, 0.000002, "This planet loves the sun so much " \
  "that it can\'t get close enough to it!")
  solar_system.add_planet(waffles)
  solar_system.add_planet(cuddles)
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Cuddles")
  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>
  puts found_planet.summary
  # => Earth is a blue-green planet ...

end

main
