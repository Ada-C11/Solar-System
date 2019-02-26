require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  #   puts earth.summary

  saturn = Planet.new("Saturn", "brownish", 6.01e24, 2.4e8, "some fact")
  #   puts saturn.summary

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Earth")

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
end

main
