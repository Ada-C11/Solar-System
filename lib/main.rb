# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  puts "Welcome to the Elder Scrolls planet program!"

  def main_menu
    while user_input != 4
      puts "What would you like to do?
        1. List Planets
        2. Planet Details
        3. Add a Planet
        4. Exit"
    end
    
  end

  # ...do stuff with planets...
  morrowind = Planet.new('Morrowind', 'green', 5.972e24, 1.496e8, 'The Dunmer of Morrowind are immune to all kinds of fire')
  skyrim = Planet.new('Skyrim', 'blue', 6.4171e23, 2.279e8, 'Skyrim Nords believe in the tale of the Dragonborn')
  elsweyr = Planet.new('Elsweyr', 'orange', 6.4171e23, 2.279e8, 'Khajit are the stealthy feline inhabitants of Elsweyr')


  solar_system = SolarSystem.new('Tamriel')
  solar_system.add_planet(morrowind)
  solar_system.add_planet(skyrim)
  solar_system.add_planet(elsweyr)

  #puts earth.summary
  #puts mars.summary

  list = solar_system.list_planets
  puts list

  puts $/ 

  found_planet = solar_system.find_planet_by_name('Morrowind')
  puts found_planet.name

end

main