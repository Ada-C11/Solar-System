require_relative "planet"
require_relative "solar_system"
require "colorized_string"

def main
  puts "Please enter the name of your solar system:"
  new_solar_system = gets.chomp
  solar_system = SolarSystem.new(new_solar_system)

  mars = Planet.new("Mars", "Burnt Orange", 459, 100000, "A future Mars colony appears in Octavia Butler's Trilogy, 'Lilith's Brood.'")
  pluto = Planet.new("Pluto", "Dirty Brown", 67, 200000, "Pluto is disgraced.")
  earth = Planet.new("Earth", "Cerulean", 122, 600000, "Earth is where fun is consensual!")
  solar_system.add_planet(mars)
  solar_system.add_planet(pluto)
  solar_system.add_planet(earth)

  puts ColorizedString["\n--list planets\n--planet details\n--add planet\n--distance between planets\n--exit\nEnter an action from the above list:"].red
  action = gets.chomp

  until action == "exit"
    if action == "list planets"
      puts ColorizedString["\n#{solar_system.list_planets}"].blue.blink
    elsif action == "planet details"
      puts "\nWhat planet would you like to know more about?"
      planet_info = gets.chomp
      puts ColorizedString["\n#{solar_system.find_planet_by_name(planet_info).summary}"].green
    elsif action == "add planet"
      puts "\nEnter planet name:"
      name = gets.chomp.capitalize
      puts "What color is #{name}?"
      color = gets.chomp
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
      fun_fact = gets.chomp
      planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(planet)
    elsif action == "distance between planets"
      puts "\nEnter the first planet:"
      first_planet = gets.chomp
      planet_1 = solar_system.find_planet_by_name(first_planet)
      puts "Enter the second planet:"
      second_planet = gets.chomp
      planet_2 = solar_system.find_planet_by_name(second_planet)
      distance_between = solar_system.distance_between(planet_1, planet_2)
      puts ColorizedString["\nThe distance between #{planet_1.name} and #{planet_2.name} is #{distance_between} kilometers."].magenta
    end
    puts ColorizedString["\n--list planets\n--planet details\n--add planet\n--distance between planets\n--exit\nWould you like to continue exploring #{new_solar_system}? Enter an action from the list above!"].red
    action = gets.chomp
  end
end

main
