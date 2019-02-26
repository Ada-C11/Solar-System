require "pry"

require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  solar_system = SolarSystem.new("Omicron")

  # planets
  vulcan = Planet.new("Vulcan", "brown & reddish", 546700, 8426000, "Has no moon")
  shoreleave = Planet.new("Shore Leave Planet", "green", 492600, 8634000, "Created as an amusement park")
  nibiru = Planet.new("Nibiru", "reddish & green", 734500, 3264000, "Home to chalk-skinned aliens")
  vendikar = Planet.new("Vendikar", "red & grey", 236300, 284200, "Very rocky!")

  solar_system.add_planet(vulcan)
  solar_system.add_planet(shoreleave)
  solar_system.add_planet(nibiru)
  solar_system.add_planet(vendikar)

  found_planet = solar_system.find_planet_by_name("vuLcAN")

  # user input time
  option = ""
  # option should be 1 or 0
  # 0 to exit
  
  until option.include?("list") || option == "exit" || option.include?("detail") || option.include?("add")
    puts "You can LIST planets, see planet DETAILS, ADD a planet, or EXIT"
    puts "What would you like to do?"
    option = gets.chomp.downcase
  end

  choice = ""
  if option.include?("list")
    puts solar_system.list_planets
  elsif option.include?("detail")
    puts "Which planet would you like to learn about?"
    choice = gets.chomp.downcase
  end

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

  if option.include?("add")
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
  end
end

main
