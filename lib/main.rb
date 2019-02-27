require "awesome_print"
require_relative "planet"
require_relative "solar_system"

def main
  option = ""
  solar_system_name = "Puppy Kingdom"
  solar_system = SolarSystem.new(solar_system_name)
  cybertron = Planet.new("Cybertron", "Silver", 10234, 890890, "Autobots don't live there anymore - see Transformers")
  arrakis = Planet.new("Arrakis", "Orange", 52345234, 12, "it is not a planet of arrays - see Dune")
  pa = Planet.new("P-apes", "Purple", 8999333, 5, "Apes RUlE!! - see... you know this one, don't you?")
  planet_express = Planet.new("Planet-express", "Lot of them", 234, 12, "it is mailing company from the future.")
  solar_system.add_planet(cybertron)
  solar_system.add_planet(arrakis)
  solar_system.add_planet(pa)
  solar_system.add_planet(planet_express)
  puts "\n-------- Welcome to Planets --------"
  while option != "5"
    puts "\nWhat would you like to do next?
  1. List Planets
  2. Planet Details
  3. Add a Planet
  4. Calculate Distance
  5. Exit "
    option = gets.chomp.capitalize

    case option
    when "1"
      list = solar_system.list_planets
      puts list
      puts "\nEnter to continue..."
      gets.chomp
    when "2"
      puts "\nPlease, tell me the name of the planet..."
      planet_name = gets.chomp.capitalize
      match = false
      found_planet = solar_system.find_planet_by_name(planet_name, match)
      if found_planet == false
        puts "Planet not found :("
      else
        puts found_planet.summary
      end
      puts "\nEnter to continue..."
      gets.chomp
    when "3"
      puts "\nPlease input the following information to create a planet..."
      puts "- Name:"
      name = gets.chomp.capitalize
      puts "- Color:"
      color = gets.chomp.downcase
      puts "- Mass (Kg):"
      mass = gets.chomp.to_f
      while mass <= 0
        puts "Please enter a number higher than 0... 
        - Mass (Kg):"
        mass = gets.chomp.to_f
      end
      puts "- Distance from #{solar_system_name} (Kms):"
      distance_from_sun_km = gets.chomp.to_f
      while distance_from_sun_km <= 0
        puts "Please enter a number higher than 0...
        - Distance from #{solar_system_name} (Kms):"
        distance_from_sun_km = gets.chomp.to_f
      end
      puts "- Fun Fact"
      fun_fact = gets.chomp.downcase
      planet = Planet.new(name, color, mass, distance_from_sun_km, fun_fact)
      solar_system.add_planet(planet)
      puts "\nEnter to continue..."
      gets.chomp
    when "4"
      puts "\nCalculate Planets Distance"
      temporary_distance = 0
      2.times do |i|
        puts "What is the planet N #{i + 1}?"
        planet_q = gets.chomp.capitalize
        temporary_distance = (temporary_distance - solar_system.distance_between(planet_q)).abs
      end
      puts " The distance between the two planets is: #{temporary_distance}Kms"
      puts "\nEnter to continue..."
      gets.chomp
    when "5"
      puts "Bye..."
      break
    end
  end
end

main
