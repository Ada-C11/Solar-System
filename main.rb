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

  list = solar_system.list_planets
  puts list
end

main
