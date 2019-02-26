require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sun")

  jupiter = Planet.new("Jupiter", "multicolor", "1.89e27", "7.78e8", "Has more than 75 moons!")
  mars = Planet.new("Mars", "red", "6.41e23", "2.27e8", "Had water in the Ancient Past!")
  earth = Planet.new("Earth", "blue-green", "5.972e24", "1.496e8", "Only planet known to support life")
  solar_system.add_planets(earth)
  solar_system.add_planets(jupiter)
  solar_system.add_planets(mars)

  #list = solar_system.list_planets
  #   puts jupiter.color
  #   puts mars.fun_fact
  #   puts mars.summary
  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary
  #puts list
end

main
