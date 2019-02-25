require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.49638, "houses these things called humans")
  mars = Planet.new("Mars", "scary-red", 4.930e24, 0.43523, "cool fact about mars")

  solar_system = SolarSystem.new("Brittny")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list
end

main
# puts main.summary
