require_relative "planet"
require_relative "solar-system"

def main
  solar_system = SolarSystem.new("Sun")

  earth = Planet.new("Earth",
                     "blue",
                     5.972e24,
                     1.496e8,
                     "We live here! :)")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars",
                    "red",
                    6.39e23,
                    2.279e8,
                    "Opportunity explored the surface of Mars for 14 years!")
  solar_system.add_planet(mars)

  puts solar_system.list_planets

  found_planet = solar_system.find_planet_by_name("Earth")
  puts found_planet
  puts found_planet.summary
end

main
