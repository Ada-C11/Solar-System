require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Blingy Star")

  piffer = Planet.new("Piffer", "brownish-black", 17.5, 2.29e6, "Not inhabitable by humans with backpacks, skateboards, scooters, crows, or UPS trucks")
  ridley = Planet.new("Ridley", "green", 8.0, 1.31e8, "Has a greater abundance of food than seemingly possible for a planet of its size")
  sne = Planet.new("Sne", "gray", 60, 5.11e7, "Only supports carbohydrate based foods")

  solar_system.add_planet(piffer)
  solar_system.add_planet(ridley)
  solar_system.add_planet(sne)

  directions = ""

  until directions == "exit"
    puts "What would you like to do? Enter LIST PLANETS, PLANET DETAILS, ADD PLANET, or EXIT."
    directions = gets.chomp.downcase
    if directions == "list planets"
      list = solar_system.list_planets
      puts list
    elsif directions == "planet details"
      puts "Which planet are you interested in?"
      show_details = gets.chomp
      found_planet = solar_system.find_planet_by_name(show_details)
      puts found_planet.summary
    elsif directions == "add planet"
      planet_new = add_new_planet
      solar_system.add_planet(planet_new)
    else
      puts "\nGood bye!"
    end
  end
end

def add_new_planet
  puts "What is the name of the planet?"
  name = gets.chomp.capitalize
  puts "What color is the planet?"
  color = gets.chomp.downcase
  puts "What is the planet's mass? (kilograms)"
  mass_kg = gets.chomp.to_f
  puts "What is the planet's distance from Blingy Star? (kilometers)"
  distance_from_sun_km = gets.chomp.to_i
  puts "What is a fun fact about the planet?"
  fun_fact = gets.chomp
  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
end

main
