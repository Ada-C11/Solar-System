require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  solar_system = SolarSystem.new("Sol")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(Planet.new("Willer", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life"))
  solar_system.add_planet(Planet.new("Saver", "amber", 9.34e54, 2.345e23, "first planet in the universe"))
  solar_system.add_planet(Planet.new("Kater", "green", 2.342e33, 4.234e43, "only planet to be made of dolphins"))
  solar_system.add_planet(Planet.new("Singher", "onyx", 4.23e23, 46.2e23, "only planet to emmit song-like sounds"))
  puts solar_system.list_planets
end

main
