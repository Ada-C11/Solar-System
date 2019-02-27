require "terminal-table"
require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("A Wrinkle in Time")

    camazotz = Planet.new(“Camazotz”, “red”, 68.9, 22.777, “Ruled by a disembodied brain”)
    ixchel = Planet.new(“Ixchel”, “pink”, 49, 10.8E9, “Inhabited by sightless creatures”)
    uriel = Planet.new(“Uriel”, “blue”, 10, 411.5E1, “Lots of extremely tall mountains”)

    solar_system.add_planet(camazotz)
    solar_system.add_planet(ixchel)
    solar_system.add_planet(uriel)

  directions = ""

  until directions == "exit"
    puts "Please enter list planets to see all the planets, planet details to learn more about each planet, or add planet to enter a new planet.
    directions = gets.chomp.downcase
    if directions == "list planets"EXIT
      list = solar_system.list_planets
      puts list
    elsif directions == "planet details"
      puts "Please enter the planet name you'd like to see details for?"
      show_details = gets.chomp
      found_planet = solar_system.find_planet_by_name(show_details)
      puts found_planet.summary
    elsif directions == "add planet"
      planet_new = add_new_planet
      solar_system.add_planet(planet_new)
    else
      puts "\nThanks!"
    end
  end
end

def add_new_planet
  puts "What is the name of the planet?"
  name = gets.chomp.capitalize
  puts "What color is the planet?"
  color = gets.chomp.downcase
  puts "What is the planet's mass in kilograms?"
  mass_kg = gets.chomp.to_f
  puts "What is the planet's distance from A Wrinkle in Time?"
  distance_from_sun_km = gets.chomp.to_i
  puts "What is a fun fact about the planet?"
  fun_fact = gets.chomp
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
end

main
