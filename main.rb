require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("SolSys")
  mars = Planet.new("Mars", "Red", "30", "100 million", "mentioned in passing in Octavia Butler's Trilogy, 'Lilith's Brood.'")
  pluto = Planet.new("Pluto", "Brown", "100", "300 million", "is disgraced.")
  solar_system.add_planet(mars)
  solar_system.add_planet(pluto)
  list = solar_system.list_planets
  puts list
  found_planet = solar_system.find_planet_by_name("Pluto")
  puts found_planet
  puts found_planet.summary
end

main
