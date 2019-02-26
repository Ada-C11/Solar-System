require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Blingy Star")

  piffer = Planet.new("Piffer", "brownish-black", 17.5, 1.496e8, "Not inhabitable by humans with backpacks, skateboards, scooters, crows, or UPS trucks")
  ridley = Planet.new("Ridley", "green", 8.0, 1.496e8, "Has a greater abundance of food than seemingly possible for a planet of its size")
  sne = Planet.new("Sne", "gray", 60, 1.496e8, "Only supports carbohydrate based foods")
  fake_ridley = Planet.new("Ridley", "blue", 8.0, 1.496e8, "Has a greater abundance of food than seemingly possible for a planet of its size")

  solar_system.add_planet(piffer)
  solar_system.add_planet(ridley)
  solar_system.add_planet(sne)

  puts "What would you like to do? Enter LIST PLANETS, PLANET DETAILS, or EXIT."
  directions = gets.chomp.downcase

  if directions == "list planets"
    list = solar_system.list_planets
    puts list
  elsif directions == "planet details"
    puts "Which planet are you interested in?"
    show_details = gets.chomp
    found_planet = solar_system.find_planet_by_name(show_details)
    # puts found_planet
    puts found_planet.summary
  else
    puts "Good bye!"
  end

  #   found_planet = solar_system.find_planet_by_name("sne")
  #   puts found_planet

  #   puts piffer.summary
  #   puts ridley.summary
end

main
