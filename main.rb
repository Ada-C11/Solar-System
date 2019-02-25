require_relative "planet"
require_relative "solar_system"

def main

    solar_system = SolarSystem.new("Sun")
    saturn = Planet.new("Saturn", "red", 1000, 10000, "Saturn has hella rings.")
    solar_system.add_planet(saturn)
    earth = Planet.new("Earth", "blue", 100, 10, "Earth is currently being destroyed by ungrateful humans.")
    solar_system.add_planet(earth)
    puts solar_system.list_planets
    found_planet = solar_system.find_planet_by_name("Mars")
    puts found_planet
    puts solar_system.distance_between("Saturn", "Earth")

end

main
