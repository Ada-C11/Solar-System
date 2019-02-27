require_relative "planet"
require_relative "solar_system"

def main
  puts "Please enter the name of your solar system:"
  solar_input = gets.chomp.to_s
  solar_system = SolarSystem.new(solar_input)
  mars = Planet.new("Mars", "Red", 10, 100000, "Mars is mentioned in passing in Octavia Butler's Trilogy, 'Lilith's Brood.'")
  pluto = Planet.new("Pluto", "Brown", 50, 200000, "Pluto is disgraced.")
  earth = Planet.new("Earth", "Blue", 25, 600000, "Earth is where fun is consensual.")
  solar_system.add_planet(mars)
  solar_system.add_planet(pluto)
  solar_system.add_planet(earth)
  puts "Enter an action:\nlist planets\nplanet details\nadd planet\ndistance between planets\nexit"
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
    elsif input = "distance between planets"
      puts "Enter the first planet:"
      first_planet = gets.chomp.to_s
      planet_1 = solar_system.find_planet_by_name(first_planet)
      puts "Enter the second planet:"
      second_planet = gets.chomp.to_s
      planet_2 = solar_system.find_planet_by_name(second_planet)
      distance_between = solar_system.distance_between(planet_1, planet_2)
      puts "#{distance_between}"
    end
    puts "Enter an action:\nlist planets\nplanet details\nadd planet\ndistance between planets\nexit"
    input = gets.chomp.to_s
  end
end

main

# Wave 3
# OPTIONAL: Add error handling to the control loop. What happens if the user enters a bad command,
#asks for details on a planet that doesn't exist, or enters an bad value for a new planet's mass?
