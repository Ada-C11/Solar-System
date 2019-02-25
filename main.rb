require_relative "planet.rb"
require_relative "solar_system.rb"
def main 
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  mars = Planet.new('Mars', "red", 6.39e23, 2.279e8,'Mars is named after a mythological figure - the Roman god of war')
  solar_system.add_planet(mars)
  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  puts found_planet.summary

end

main