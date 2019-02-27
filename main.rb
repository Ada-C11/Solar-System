require_relative "planet.rb"
require_relative "solar_system.rb"
require 'terminal-table'

def main 
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  mars = Planet.new('Mars', "red", 6.39e23, 2.279e8,'Mars is named after a mythological figure - the Roman god of war')
  solar_system.add_planet(mars)
  venus = Planet.new('Venus', "yellow-white", 4.867e24, 1.082e8,'Venus is the second brightest natural object in the sky')
  solar_system.add_planet(venus)
  venus2 = Planet.new('Venus', "green-white", 4.867e24, 1.082e8,'Venus2 is the second brightest natural object in the sky')
  solar_system.add_planet(venus2)

  while true
    puts "What would you like to do? You can get planet details, list planets, add planet or exit."
    user_input = gets.chomp.downcase
    if user_input == "exit"
      return
    
    elsif user_input == "list planets"
      list = solar_system.list_planets
      puts list
    
    elsif user_input == "planet details"
      puts "What is the name of the planet you wish to learn about?"
      name = gets.chomp
      found_planet = solar_system.find_planet_by_name(name)
      puts found_planet if !found_planet.is_a? Planet
      puts found_planet.summary if found_planet.is_a? Planet

    elsif user_input == "add planet"
      name = input_handle('name').capitalize
      color = input_handle('color')
      mass_kg = input_handle('mass_kg').to_i
      distance_from_sun_km = input_handle('distance_from_sun_km').to_i
      fun_fact = input_handle('fun_fact')
      name = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(name)
    end
  end
end
def input_handle(variable)
  puts "What is the #{variable} of the planet"
  variable = gets.chomp.downcase
  while variable ==''
    puts "Please type in a valid input"
    variable = gets.chomp.downcase
  end
  return variable
end
main
