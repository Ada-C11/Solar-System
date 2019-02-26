# main.rb
require_relative 'planet'
require_relative 'solar_system'
require 'colorize'

def main_menu
  puts "Welcome to the Elder Scrolls Planet Program!"
  puts "\t\t\.:Menu:.
    |1|::List Planets
    |2|::Planet Details
    |3|::Add Planet
    |4|::Exit"
  main
end

def main
  morrowind = Planet.new('Morrowind', 'green', 5.972e24, 1.496e8, 'The Dunmer of Morrowind are immune to all kinds of fire')
  skyrim = Planet.new('Skyrim', 'blue', 6.4171e23, 2.279e8, 'Skyrim Nords believe in the tale of the Dragonborn')
  elsweyr = Planet.new('Elsweyr', 'orange', 6.4171e23, 2.279e8, 'Khajit are the stealthy feline inhabitants of Elsweyr')

  solar_system = SolarSystem.new('Tamriel')
  solar_system.add_planet(morrowind)
  solar_system.add_planet(skyrim)
  solar_system.add_planet(elsweyr)

  user_input = "y"
  while user_input == "y"
    puts $\
    puts "Choose from the menu:"
    choice = gets.chomp.to_i
    while choice != 1 && choice != 2 && choice != 3 && choice != 4 && choice != 5
      puts "Sorry milk-drinker, that's not a valid input. Try again.".colorize(:red)
      choice = gets.chomp.to_i
    end 
  
    list = solar_system.list_planets

    if choice == 1
      puts $/
      puts list

    elsif choice == 2
      puts $\
      puts "||::Let's find out more about the planets of Tamriel!:::::||".colorize(:magenta)
      puts "||::Enter the name of the planet you want to learn about::||".colorize(:magenta)
      puts $\
      puts list
      discover_input = gets.chomp 
      searched_planet = solar_system.find_planet_by_name(discover_input)

      if discover_input != @planets
        puts "Sorry milk-drinker, that's not a valid input. Try again.".colorize(:red)
        discover_input = gets.chomp
        searched_planet = solar_system.find_planet_by_name(discover_input)
      end

      if searched_planet
        puts "I had you figured for a scholar. I'll tell you all about #{searched_planet.name}!".colorize(:cyan)
        puts $\
        puts searched_planet.summary
      end 

    elsif choice == 3
      solar_system.make_planet
    elsif choice == 4
      answer = "y"
      while answer == "y"
         puts "Would you like to run again? y || n".colorize(:yellow)
         answer = gets.chomp
             if answer == "y"
                 main_menu
             else 
                 break
             end
      end
      exit
    end   
  end
end

main_menu