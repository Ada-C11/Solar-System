require_relative "planet"
require_relative "solar_system"

def main
  puts "Please enter the name of your solar system:"
  solar_input = gets.chomp.to_s
  solar_system = SolarSystem.new(solar_input)
  mars = Planet.new("Mars", "Red", "3", "100 million", "Mars is mentioned in passing in Octavia Butler's Trilogy, 'Lilith's Brood.'")
  pluto = Planet.new("Pluto", "Brown", "100", "300 million", "Pluto is disgraced.")
  earth = Planet.new("Earth", "Blue", "52", "600 million", "Earth is where fun is consensual.")
  solar_system.add_planet(mars)
  solar_system.add_planet(pluto)
  solar_system.add_planet(earth)
  puts "Enter an action:\nlist planets\nplanet details\nadd planet\nexit"
  input = gets.chomp.to_s
  until input == "exit"
    if input == "list planets"
      puts solar_system.list_planets
    elsif input == "planet details"
      puts "What planet would you like to know more about?"
      planet_info = gets.chomp.to_s
      puts "#{solar_system.find_planet_by_name(planet_info).summary}"
    elsif input == "add planet"
      puts "Enter planet name:"
      name = gets.chomp.to_s
      puts "What color is #{name}?"
      color = gets.chomp.to_s
      puts "How much does #{name} weigh in kilograms?"
      mass_kg = gets.chomp.to_f
      until mass_kg > 0
        puts "Please enter a number greater than 1:"
        mass_kg = gets.chomp.to_f
      end
      puts "What's #{name}'s distance to the sun in km?"
      distance_from_sun_km = gets.chomp.to_f
      until distance_from_sun_km > 0
        puts "Please enter a number greater than 1:"
        distance_from_sun_km = gets.chomp.to_f
      end
      puts "What is a fun fact about #{name}?"
      fun_fact = gets.chomp.to_s
      planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(planet)
    end
    puts "Enter an action:\nlist planets\nplanet details\nadd planet\nexit"
    input = gets.chomp.to_s
  end
end

main

# wave 1
# Both mass_kg and distance_from_sun_km must be numbers that are greater than zero.
# What should your program do if they aren't?
# How will you make sure this behavior works?

# wave 2:
# OPTIONAL: Create a method, SolarSystem#distance_between, that takes two planet names as parameters and returns the
# distance between them.
# You can assume that all the planets are lined up in a straight line.
# OPTIONAL: Add minitest tests for SolarSystem.

# Wave 3
# OPTIONAL: Add error handling to the control loop. What happens if the user enters a bad command,
#asks for details on a planet that doesn't exist, or enters an bad value for a new planet's mass?

# OPTIONAL: Implement the optional distance_between method from wave 2, then add an option to the control
# loop to expose it to the user.
