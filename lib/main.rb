require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  err_system = SolarSystem.new("Err")
  err_system.add_planet(Planet.new("Willerr", "blue", 5.972e24, 1.496e28, "raining rainbows"))
  err_system.add_planet(Planet.new("Saverr", "amber", 9.34e54, 2.345e23, "saving time by reversing spin"))
  err_system.add_planet(Planet.new("Katerr", "green", 2.342e33, 4.234e43, "being made of dolphins"))
  err_system.add_planet(Planet.new("Singherr", "onyx", 4.23e23, 46.2e23, "emmitting song-like sounds"))
  puts err_system.list_planets
  puts err_system.find_planet_by_name("Willerr").summary
end

main
