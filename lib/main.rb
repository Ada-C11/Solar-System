require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Big Ol Pupper")
  waffles = Planet.new("Waffles", "\'maple syrup\' brown", 3.555e23, 1.273e12, "It is the only known " \
  "planet to be smothered in fried chicken")
  cuddles = Planet.new("Cuddles", "soft velvet grey", 9.973e30, 0.000002, "This planet loves the sun so much " \
  "that it can\'t get close enough to it!")
  solar_system.add_planet("Waffles")
  solar_system.add_planet("Cuddles")
  list = solar_system.list_planets
  puts list
end

main
