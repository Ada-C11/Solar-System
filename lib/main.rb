# main.rb
require_relative 'planet'
require_relative 'solar_system'


def main_menu
  puts "Welcome to the Elder Scrolls Planet Program!"
  puts "\t\t\.:Menu:.
    |1|::List Planets
    |2|::Planet Details
    |3|::Add Planet
    |4|::Distance Between Two Planets
    |5|::Exit"
  main
end

def main
  # ...do stuff with planets...
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
    puts "Make a selection:"
    choice = gets.chomp.to_i
    while choice != 1 && choice != 2 && choice != 3 && choice != 4 && choice != 5
      puts "Sorry milk-drinker, that's not a valid input. Try again."
      choice = gets.chomp.to_i
    end 
  
    list = solar_system.list_planets

    if choice == 1
      puts $/
      puts list

    elsif choice == 2
      puts $\
      puts "||::Let's find out more about the planets of Tamriel!:::::||"
      puts "||::Enter the name of the planet you want to learn about::||"
      puts $\
      puts list
      discover_input = gets.chomp
      found_planet = solar_system.find_planet_by_name(discover_input)
      
      if found_planet
        puts "I had you figured for a scholar. I'll tell you all about #{found_planet.name}!"
        puts $\
        puts found_planet.summary
      end
    
    elsif choice == 3
      puts $\ 
      puts "To create your own planet, let's input some details below:"

      print "Name: "
      user_name = gets.chomp.capitalize
      print "Color: "
      user_color = gets.chomp
      print "Mass kg: "
      user_mass = gets.chomp
      print "Distance km: "
      user_distance = gets.chomp
      print "Fun fact: "
      user_fact = gets.chomp

      new_planet = Planet.new(user_name, user_color, user_mass, user_distance, user_fact)
      solar_system.add_planet(new_planet)
    end
  end


  #puts earth.summary
  #puts mars.summary

  # list = solar_system.list_planets
  # puts list

  # puts $/ 

  # found_planet = solar_system.find_planet_by_name('Morrowind')
  # puts found_planet.name

end

main_menu