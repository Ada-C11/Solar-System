require_relative 'planets.rb'
require_relative 'solar_system.rb'
require 'colorize'

def main
  # creating a new solar system and 5 planets to go into that solar system

  solar_system = SolarSystem.new('Athleta')

  # giving all of the Planet information. I do this 4 more times
  sparta = Planet.new('Sparta', 'red', 4.294e13, 1.325e2, 'full of aggressive aliens')
  # adding this planet to the solar system. I do this 4 more times
  solar_system.add_planet(sparta)

  venus = Planet.new('Venus', 'pink', 5.294e24, 2.493e6, 'home planet of the goddess of love')
  solar_system.add_planet(venus)

  serena = Planet.new('Serena', 'blue', 4.32e22, 1.304e2, 'home of the greatest athletes of all time')
  solar_system.add_planet(serena)

  mia = Planet.new('Mia', 'red, white, and blue', 34.5e6, 2.34e7, 'soccer is the planetary sport')
  solar_system.add_planet(mia)

  portia = Planet.new('Portia', 'black', 14.32e3, 1.46e8, 'home to fast runners')
  solar_system.add_planet(portia)

  fisher = Planet.new('Fisher', 'grey', 43.3e2, 14.56e17, 'all animals on this planet come when called')
  solar_system.add_planet(fisher)

  puts "What would you like to do? 'list planets', 'planet details', 'add planet', 
  'find distance between two planets', or 'exit'?"
  answer = gets.chomp.to_s
  
  # control loop that asks the user for a command
  until answer == "exit"
    # will list planets
    if answer == 'list planets'
      puts solar_system.list_planets.colorize(:cyan)
    elsif answer == 'planet details'
      puts "Which planet would you like to learn about?"
      planet_detail = gets.chomp.to_s
      # will ask user for a specific planet, then list details. Will raise ArgumentError if planet doesn't exist
      found_planet = solar_system.find_planet_by_name(planet_detail)
      puts found_planet.summary.colorize(:green)
    elsif answer == 'add planet'
      # adds a planet to the solar system. Will raise ArgumentError if mass or distance in km are < 0 or if the planet name already exists in the solar system
      solar_system.create_new_planet
    elsif answer == 'find distance between two planets'
      # will calculate the distance between the two selected planets.
      puts "Which two planets would you like to use in your calculation? #{solar_system.list_planets}"
      puts "Planet 1"
      planet_1 = gets.chomp.to_s
      puts "Planet 2"
      planet_2 = gets.chomp.to_s
      puts "The distance between #{planet_1} and #{planet_2} is #{solar_system.distance_between(planet_1, planet_2)}km".colorize(:blue)
    else 
      # if the user input is anything other than what is listed, the program will give this message
      puts "I'm sorry, I didn't understand that command.".colorize(:red)
    end
    puts "What would you like to do? 'list planets', 'planet details', 'add planet', 'find distance between to planets', or 'exit'?"
    answer = gets.chomp.to_s
  end
  
  if answer == "exit"
    puts "Thanks for visiting!".colorize(:blue)
  end

end

main


