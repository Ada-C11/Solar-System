require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  astra = Planet.new("Astra", "silver", 5, 23, "Marvel Universe planet")
  ego = Planet.new("Ego", "green", 124234, 325623, "Marvel bioverse")

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(astra)
  solar_system.add_planet(ego)

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary
end

main
