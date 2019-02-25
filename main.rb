
require_relative "planet"
require_relative "solar_system"
require "terminal-table"

def main
  solar_system = SolarSystem.new("Sun")

  earth = Planet.new("Earth", "turquoise", 5.97e34, 149.6e6, "We have tacos here")
  solar_system.add_planet(earth)
  mars = Planet.new("Mars", "red", 0.642e24, 227.9e6, "Named after Mars, the Roman god of war")
  solar_system.add_planet(mars)

  puts earth.summary
  puts mars.summary

  # puts "Planets orbiting #{"
  solar_system.list_planets
end

main
