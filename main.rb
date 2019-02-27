require "pry"

require_relative "planet.rb"
require_relative "solar_system.rb"

# option menu
def options
  return "
  Options available to you...
  1. See a LIST of all the planets on file
  2. See a specific planet's DETAILS
  3. ADD a planet
  4. EXIT\n
  Please enter your option:"
end

def main
  solar_system = SolarSystem.new("Omicron")

  vulcan = Planet.new("Vulcan", "brown & reddish", 546700, 8426000, "Has no moon")
  solar_system.add_planet(vulcan)
  shoreleave = Planet.new("Shore Leave Planet", "green", 492600, 8634000, "Created as an amusement park")
  solar_system.add_planet(shoreleave)
  nibiru = Planet.new("Nibiru", "reddish & green", 734500, 3264000, "Home to chalk-skinned aliens")
  solar_system.add_planet(nibiru)
  vendikar = Planet.new("Vendikar", "red & grey", 236300, 284200, "Very rocky!")
  solar_system.add_planet(vendikar)

  # Welcome message
  puts "Welcome to the PlanetDex!"

  # user input time
  exit = "n"

  puts options
  option = gets.chomp

  loop do
    if option.include?("list") || option == "1"
      puts solar_system.list_planets
    elsif option.include?("detail") || option == "2"
      puts "Which planet would you like to learn about?"
      planet = gets.chomp.downcase
      puts solar_system.find_planet_by_name(planet).summary
    elsif option.include?("add") || option == "3"
      puts solar_system.new_planet
    elsif option.include?("exit") || option == "4"
      break
    else
      puts "That is not a valid option."
      puts "Please re-enter your option:"
    end

    puts options
    option = gets.chomp
  end
end

main
