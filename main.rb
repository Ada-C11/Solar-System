require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "only planet known to support life")
  mars = Planet.new("mars", "red", 4.972e24, 0.496e8, "rich people want to live here in the future")

  puts earth.summary
  puts mars.summary
end

main

solar_system = Solar_system.new("Sol")

earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "only planet known to support life")
solar_system.add_planet(earth)

mars = Planet.new("mars", "red", 4.972e24, 0.496e8, "rich people want to live here in the future")
solar_system.add_planet(mars)

list = solar_system.list_planets
puts list
# => Planets orbiting Sol
# => 1.  Earth
# => 2.  Mars
