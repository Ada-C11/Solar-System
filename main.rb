require_relative "planet"
require_relative "solar_system"

def main
  #   solar_system = SolarSystem.new("Sol")
  #   earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  #   solar_system.add_planet(earth)
  #   venus = Planet.new("Venus", "green", 6.972e24, 2.496e8, "moody")
  #   solar_system.add_planet(venus)
  #   puts venus.summary
  #   puts earth.summary
  #   puts solar_system.list_planets

  solar_system = SolarSystem.new("Sol")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(earth)
  venus = Planet.new("Venus", "green", 6.972e24, 2.496e8, "moody")
  solar_system.add_planet(venus)
  mars = Planet.new("mars", "red", 4.972e24, 0.496e8, "agro")
  solar_system.add_planet(mars)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Earth")

  # found_planet is an instance of class Planet
  puts found_planet
  # => #<Planet:0x00007fe7c2868ee8>

  puts found_planet.summary
end

main
