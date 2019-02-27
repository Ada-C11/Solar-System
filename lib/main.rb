# main.rb
require_relative "planet"
require_relative "solar_system"
require "terminal-table"

def check_num(num_val)
  # raises an argument error if the value argument is less than or equal to zero
  if num_val <= 0
    raise ArgumentError
  end
end

def get_user_input_add_planet(solar_system)
  # gets user planet input to add a new planet
  puts "What is the name of the planet?"
  name = gets.chomp
  name = duplicate_planet_solar_system?(solar_system, name)
  puts "What is the color of the planet?"
  color = gets.chomp
  puts "What is the mass, in kg, of the planet?"
  mass_kg = gets.chomp.to_f
  check_num(mass_kg)
  puts "What is the distance from the planet to the sun, in km?"
  distance_from_sun_km = gets.chomp.to_f
  check_num(distance_from_sun_km)
  puts "What is a fun fact about this planet"
  fun_fact = gets.chomp
  return name, color, mass_kg, distance_from_sun_km, fun_fact
end

def duplicate_planet_solar_system?(solar_system, name)
  # checks to see if planet is already in system, and if it is, it gives the user option to display
  # a summary, otherwise it makes the user input a new planet
  while solar_system.check_planet_found(name) == true
    puts "That planet is already in our solar system!"
    puts "Would you like to see more about it? Type y for yes and n for no."
    is_see_more = gets.chomp.downcase
    while is_see_more != "n" || is_see_more != "y"
      case is_see_more
      when "y"
        puts solar_system.find_planet_by_name(name).summary
        puts "Please choose a different planet to add."
        name = gets.chomp
        break
      when "n"
        puts "Please choose a different planet to add."
        name = gets.chomp
        break
      else
        puts "Invalid input."
        puts "Would you like to see more about it? Type y for yes and n for no."
        is_see_more = gets.chomp.downcase
      end
    end
  end
  return name
end

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red", 6.42e23, 2.29e8, "Home to the tallest mountain in the solar system")
  jupiter = Planet.new("Jupiter", "grey", 1.9e27, 7.79e8, "Jupiter is the fourth brightest object in the solar system")
  venus = Planet.new("Venus", "red-yellow", 4.87e24, 1.08e8, "Brightest planet in the solar systemf")
  mercury = Planet.new("Mercury", "silver", 3.28e23, 3.6e6, "Smallest planet")

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(venus)
  solar_system.add_planet(mercury)

  user_input = nil
  while user_input != 5
    puts "Choose a number associated with the following choices:\n 1 - list planets\n 2 - planet details\n 3 - add planet\n 4 - distance between planets\n 5 - exit"
    user_input = gets.chomp.to_i
    case user_input
    when 1
      list = solar_system.list_planets
      puts list
    when 2
      puts "Which planet would you like to learn about?"
      planet_found = gets.chomp()
      while solar_system.check_planet_found(planet_found) == false
        puts "Planet not found, select another planet."
        planet_found = gets.chomp()
      end
      # check if planet found
      puts solar_system.find_planet_by_name(planet_found).summary
    when 3
      new_planet_info = get_user_input_add_planet(solar_system)
      new_planet = Planet.new(new_planet_info[0], new_planet_info[1], new_planet_info[2], new_planet_info[3], new_planet_info[4])
      solar_system.add_planet(new_planet)
    when 4
      puts "What's the first planet to compare?"
      planet1 = gets.chomp
      puts "What's the second planet to compare?"
      planet2 = gets.chomp
      puts "Distance between #{planet1} and #{planet2} is #{solar_system.distance_between(planet1, planet2)} km"
    when 5
      puts "Exiting"
    else
      puts "Choice not valid."
    end
  end
end

main
