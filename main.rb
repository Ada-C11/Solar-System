require_relative "solar_system"
require_relative "planet"

def main
  sol_system = SolarSystem.new("Sol")
  mercury = Planet.new("Mercury", "red", 78939, 2000, "")
  sol_system.add_planet(mercury)

  venus = Planet.new("Venus", "red", 78939, 2000, "")
  sol_system.add_planet(venus)

  earth = Planet.new("Earth", "green", 100.25, 5000, "I live here!")
  sol_system.add_planet(earth)

  mars = Planet.new("Mars", "red", 78939, 2000, "John Jones is from there")
  sol_system.add_planet(mars)

  jupiter = Planet.new("Jupiter", "red", 78939, 2000, "")
  sol_system.add_planet(jupiter)

  saturn = Planet.new("Saturn", "purple", 78939, 2000, "")
  sol_system.add_planet(saturn)

  uranus = Planet.new("Uranus", "red", 78939, 2000, "")
  sol_system.add_planet(uranus)

  neptune = Planet.new("Neptune", "red", 78939, 2000, "")
  sol_system.add_planet(neptune)

  list = sol_system.list_planets

  puts "one"
  puts sol_system.list_planets_one
  #will return a summary of the planet you put in the argument
  sol_system.find_planet_by_name_two("maRs").summary

  puts "Would you like a list of planets, planet details, to add a planet, or to exit?"
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

  # def planet_details(details)
  #   planet_summary = @planets.each do |planet|
  #     planet
  #   end
  # end
end

main
