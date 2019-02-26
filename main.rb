require "pry"

require_relative "planet.rb"
require_relative "solar_system.rb"

# option menu
def options
  return "Options available to you...
  1. See a LIST of all the planets on file
  2. See a specific planet's DETAILS
  3. ADD a planet
  4. Quit\n
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
  puts options
  option = gets.chomp

  case
  when option.include?("list"), "1"
    puts solar_system.list_planets
  when option.include?("detail"), "2"
    puts "Which planet would you like to learn about?"
    choice = gets.chomp.downcase

    case choice
    when "1", "vulcan"
      puts solar_system.planets[0].summary
    when "2", "shore leave planet"
      puts solar_system.planets[1].summary
    when "3", "nibiru"
      puts solar_system.planets[2].summary
    when "4", "vendikar"
      puts solar_system.planets[3].summary
    end
  when option.include?("add")
    puts "What is the planet's name?"
    name = gets.chomp
    puts "What is the planet's color?"
    color = gets.chomp
    puts "What is the planet's mass (kg)?"
    mass = gets.chomp
    puts "What is the planet's distance from the sun (km)?"
    sun_distance = gets.chomp
    puts "Please enter  a fun fact about the planet!"
    fun_fact = gets.chomp

    name = Planet.new(name, color, mass, sun_distance, fun_fact)
    add_planet(name)
  when option.include?("exit"), "4"
    puts "Thank you for using the PlanetDex!"
  else
    puts "That is not a valid option."
    puts "Please re-enter your option:"
  end
end

main
