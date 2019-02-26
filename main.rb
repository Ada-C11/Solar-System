require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  jupiter = Planet.new("Jupiter", "reddish", 578944636, 75436.32, "This planet has been a planet since the big bang.")

  saturn = Planet.new("Saturn", "multi-colored striped", 39435845, 222343, "This planet has rings of gas, dust and rock.")

  solar_system_1 = SolarSystem.new("Sol")
  solar_system_1.add_planet(jupiter)
  solar_system_1.add_planet(saturn)

  list = solar_system_1.list_planets
  puts list

  return "#{jupiter.summary} #{saturn.summary}"
end

puts main

