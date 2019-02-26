
require_relative "planet"
require_relative "solar_system"
require "terminal-table"

def main
  solar_system = SolarSystem.new("Sun")

  earth = Planet.new("Earth", "turquoise", 5.97e24, 149.6e6, "We have tacos here")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", "red", 0.642e24, 227.9e6, "Named after Mars, the Roman god of war")
  solar_system.add_planet(mars)

  venus = Planet.new("Venus", "brown", 4.87e24, 108.2e6, "One day on Venus is longer than one Earth year")
  solar_system.add_planet(venus)

  jupiter = Planet.new("Jupiter", "yellow", 1898e24, 778.6e6, "Jupier has 67 moons")
  solar_system.add_planet(jupiter)

  puts earth.summary
  puts mars.summary
  puts venus.summary
  puts jupiter.summary

  solar_system.list_planets

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet
  found_planet.each { |each_planet| puts each_planet.summary }
  # calling .summary on an array but it need to be on individual element/string of array

end

main