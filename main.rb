require_relative "planet.rb"
require_relative "solar_system.rb"

def input_handle(variable)
  puts "What is the #{variable} of the planet"
  variable = gets.chomp.downcase
  while variable ==''
    puts "Please type in a valid input."
    variable = gets.chomp.downcase
  end
  return variable
end

def validate_integer(variable)
  puts "What is the #{variable} of the planet"
  variable = gets.chomp.downcase.to_i
  while variable <= 0
    puts "Input must a number greater than zero. Please try again."
    variable = gets.chomp.downcase.to_i
  end
  return variable
end

def main 
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', "red", 6.39e23, 2.279e8,'Mars is named after a mythological figure - the Roman god of war')
  venus = Planet.new('Venus', "yellow-white", 4.867e24, 1.082e8,'Venus is the second brightest natural object in the sky')
  mercury = Planet.new('Mercury', "dark gray", 3.30e23, 5.8e7,'Only two spacecraft have ever visited Mercuryß')
  jupiter = Planet.new('Jupiter', "white, red, orange, brown, and yellow", 1.898e27, 7.785e8,'It is made primarily of gases and is therefore known as a "gas giant"')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(venus)
  solar_system.add_planet(mercury)
  solar_system.add_planet(jupiter)

  while true
    puts "What would you like to do? Choose from these options: [planet details], [list planets], [add planet] or [exit]."
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
      mass_kg = validate_integer('mass_kg')
      distance_from_sun_km = validate_integer('distance_from_sun_km')
      fun_fact = input_handle('fun_fact')
      name = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(name)
    end
  end
end

main
