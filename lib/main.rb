require_relative "planet"
require_relative "solar_system"

require "awesome_print"
require "colorize"

SOLAR_SYSTEM = SolarSystem.new("Sol")

# Optional: handling user entering bad command
def handling_input(input)
  possible_inputs = ["list planets", "planet details", "add planet", "find distance", "exit"]
  until possible_inputs.any? { |word| word == input }
    print "Invalid input.\nPlease enter \"list planets\", \"planet details\", \"add planet\", \"find distance\" or \"exit\": "
    input = gets.chomp.downcase
  end
  return input
end

def existing_planets
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "it's the only planet known to support life")
  SOLAR_SYSTEM.add_planet(earth)

  venus = Planet.new("Venus", "yellow", 4.867e24, 67.3e6, "40 spacecraft have explored Venus")
  SOLAR_SYSTEM.add_planet(venus)

  mercury = Planet.new("Mercury", "blue", 3.285e23, 28.6e6, "kid-friendly")
  SOLAR_SYSTEM.add_planet(mercury)

  mars = Planet.new("Mars", "orange", 6.39e23, 141.7e6, "it has 2 moons")
  SOLAR_SYSTEM.add_planet(mars)
end

def list_planets(input)
  if input == "list planets"
    list = SOLAR_SYSTEM.list_planets
    puts list.colorize(:green)
  end
end

def planet_details(input)
  if input == "planet details"
    puts "Which planet do you want to learn about? Choose one: Earth, Venus, Mercury, Mars"
    planet_chosen = gets.chomp.downcase
    # Optional: when user enters a planet that doesn't exist, raise an exception.
    if !SOLAR_SYSTEM.planets.map { |planet| planet.name }.include?(planet_chosen.capitalize)
      raise ArgumentError, "Planet entered is not in the list."
    end
    puts "\n"
    puts SOLAR_SYSTEM.find_planet_by_name(planet_chosen).summary.colorize(:green)
  end
end

def add_planet(input)
  if input == "add planet"
    puts "What is the planet's name?"
    name = gets.chomp.capitalize
    puts "What is its color?"
    color = gets.chomp
    puts "What is its mass(kg)?"
    mass_kg = gets.chomp.to_f
    # Optional: if user enters a bad value
    until mass_kg > 0
      puts "Mass must be a number greater than 0. Please enter again: "
      mass_kg = gets.chomp.to_f
    end
    puts "What is its distance from the Sun in km?"
    distance_from_sun_km = gets.chomp.to_f
    # Optional: if the user enters a bad value
    until distance_from_sun_km > 0
      puts "Distance from the Sun must be a number greater than 0. Please enter again: "
      distance_from_sun_km = gets.chomp.to_f
    end
    puts "What is its fun fact?"
    fun_fact = gets.chomp

    planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    SOLAR_SYSTEM.add_planet(planet)
    puts "#{name} has been added with the details below:".colorize(:green)
    puts SOLAR_SYSTEM.find_planet_by_name(name).summary.colorize(:green)
  end
end

def find_distance(input)
  if input == "find distance"
    puts "Enter first planet: "
    planet_name1 = gets.chomp.downcase
    puts "Enter second planet: "
    planet_name2 = gets.chomp.downcase
    puts "The distance is #{SOLAR_SYSTEM.distance_between(planet_name1, planet_name2)}".colorize(:green)
  end
end

def main
  existing_planets
  puts "What would you like to do?"
  print "Please enter \"list planets\", \"planet details\", \"add planet\", \"find distance\" or \"exit\": "
  input = gets.chomp.downcase
  input = handling_input(input)

  until input == "exit"
    list_planets(input)
    planet_details(input)
    add_planet(input)
    find_distance(input) # OPTIONAL: Implement the optional distance_between method
    puts "What would you like to do next?"
    puts "Please enter \"list planets\", \"planet details\", \"add planet\", \"find distance\" or \"exit\": "
    input = gets.chomp
    input = handling_input(input)
  end
end

main
