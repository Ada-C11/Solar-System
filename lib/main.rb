require_relative 'planets.rb'
require_relative 'solar_system.rb'

def main
  #should create two different instances of Planet and print out some of their attributes

  solar_system = SolarSystem.new('Athleta')

  sparta = Planet.new('Sparta', 'red', 4.294e13, 1.325e2, 'full of aggressive aliens')
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
  
  until answer == "exit"
    if answer == 'list planets'
      puts solar_system.list_planets
    elsif answer == 'planet details'
      puts "Which planet would you like to learn about?"
      planet_detail = gets.chomp.to_s
      found_planet = solar_system.find_planet_by_name(planet_detail)
      puts found_planet.summary
    elsif answer == 'add planet'
      solar_system.create_new_planet
    elsif answer == 'find distance between two planets'
      puts "Which two planets would you like to use in your calculation?"
      puts "Planet 1"
      planet_1 = gets.chomp.to_s
      puts "Planet 2\t"
      planet_2 = gets.chomp.to_s
      puts "The distance between #{planet_1} and #{planet_2} is #{solar_system.distance_between(planet_1, planet_2)}km"
    else 
      puts "I'm sorry, I didn't understand that command."
    end
    puts "What would you like to do? 'list planets', 'planet details', 'add planet', 'find distance between to planets', or 'exit'?"
    answer = gets.chomp.to_s
  end
  
  if answer == "exit"
    puts "Thanks for visiting!"
  end

end

main

