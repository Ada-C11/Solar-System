require_relative "solar_system"
require_relative "planet"

def main
  sol_system = SolarSystem.new("Sol")
  gem_homeland = Planet.new("Gem Homeland", "crystal", 78939, 287200, "Home of the Crystal Gems.")
  sol_system.add_planet(gem_homeland)

  venus = Planet.new("Venus", "purple", 78939, 2000, "The brightest object in our solar system after the sun and the moon. ")
  sol_system.add_planet(venus)

  earth = Planet.new("Earth", "blue", 100.25, 5000, "I live here!")
  sol_system.add_planet(earth)

  mars = Planet.new("Mars", "red", 78939, 2000, "John Jones is from there")
  sol_system.add_planet(mars)

  jupiter = Planet.new("Jupiter", "yellow", 78939, 2000, "The fastest rotating planet in the solar system.")
  sol_system.add_planet(jupiter)

  saturn = Planet.new("Saturn", "purple with rings", 78939, 2000, "My fav planet!")
  sol_system.add_planet(saturn)

  uranus = Planet.new("Uranus", "orange", 78939, 2000, "lol")
  sol_system.add_planet(uranus)

  neptune = Planet.new("Neptune", "green", 78939, 2000, "Not to be confused with the King of Bikini Bottom.")
  sol_system.add_planet(neptune)

  list = sol_system.list_planets

  puts sol_system.list_planets_one
  #will return a summary of the planet you put in the argument
  # sol_system.find_planet_by_name_two("maRs").summary

  puts "Would you like a list of planets, planet details, to add a planet, or to exit?"
  puts "Enter (list), (details), (add), or (exit)."
  puts "Enter List to continue or exit to end the program"

  # gets user input

  loop do
    list = sol_system.list_planets
    input = gets.chomp.downcase
    break if input == "exit"

    case input
    when "list"
      puts list
    when "details"
      puts "What planet do you want details for?"
      details = gets.chomp.downcase
      puts sol_system.find_planet_by_name_two(details).summary
    when "add"
      sol_system.new_planet
      puts sol_system.list_planets
    end
    break
  end

  puts "Goodbye!"
end

main
