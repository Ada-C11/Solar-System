require_relative "planet.rb"
require_relative "solar_system"

def main
    earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  astra = Planet.new("Cloudster", "pink", 5, 23, "Hello Kitty Universe planet")
  ego = Planet.new("Puffy", "periwinkle", 124234, 325623, "Hello Kitte bioverse")
  namek = Planet.new("Glitterish", "Surruliean", 35435472, 23513541, "Hello Kitty world with lots of water and grass")
  # Solar System # 1
  solar_system = SolarSystem.new("Ethereal")
  solar_system.add_planet(earth)
  solar_system.add_planet(astra)
  list = solar_system.list_planets
  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary
end
main