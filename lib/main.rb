require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  solar_system = SolarSystem.new("Sol")
  mercury = Planet.new("Mercury", "gray", 0.330, 57909227, "It's hot, but not too hot for ice")
  solar_system.add_planet(mercury)
  venus = Planet.new("Venus", "pale yellow", 4.87, 108209475, "Doesn’t have any moons, and we aren’t sure why.")
  solar_system.add_planet(venus)
  found_planet = solar_system.find_planet_by_name("Venus")
  puts found_planet
  puts found_planet.summary
  list = solar_system.list_planets
  puts list
end

main
