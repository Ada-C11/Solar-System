#main.rb
require_relative "planet"
require_relative "solar_system"

def user_find_distance(solar_system)
  print "Find the distance between two planets. Planet 1: "
  planet1_name = gets.chomp
  print "Planet 2: "
  planet2_name = gets.chomp

  planet1 = solar_system.find_planet_by_name(planet1_name)
  planet2 = solar_system.find_planet_by_name(planet2_name)

  puts solar_system.distance_between(planet1, planet2)
end

def user_add_planet(solar_system)
  print "Planet name: "
  planet_name = gets.chomp
  print "Planet color: "
  planet_color = gets.chomp
  print "Mass in kg: "
  planet_mass = gets.chomp.to_i
  print "Distance from the sun in km: "
  planet_distance = gets.chomp.to_i
  print "Fun fact about the planet: "
  planet_fact = gets.chomp
  user_planet = Planet.new(name: planet_name, color: planet_color, mass_kg: planet_mass, distance_from_sun_km: planet_distance, fun_fact: planet_fact)
  solar_system.add_planet(user_planet)
  puts user_planet.summary
end

def user_planet_details(solar_system)
  print "Which planet would you like to know more about? "
  planet = gets.chomp
  found_planet = solar_system.find_planet_by_name(planet)
  puts found_planet.summary
end

def main
  earth = Planet.new(name: "Earth", color: "blue-green", mass_kg: 5.972e24, distance_from_sun_km: 1.496e8, fun_fact: "It has llamas living on it")

  mars = Planet.new(name: "Mars", color: "red", mass_kg: 6.39e23, distance_from_sun_km: 2.29e8, fun_fact: "It is named after the Roman god of war")

  super_hot_planet = Planet.new(name: "Ignis", color: "white", mass_kg: 100, distance_from_sun_km: 10, fun_fact: "It's wayyyy too close to the sun")

  #   puts earth.summary
  #   puts mars.summary
  #   puts super_hot_planet.summary

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(super_hot_planet)
  #   puts solar_system.list_planets

  #   found_planet = solar_system.find_planet_by_name("mars")
  #   puts found_planet

  #   puts found_planet.summary

  #   puts solar_system.distance_between(earth, super_hot_planet)
  continue = true

  while continue == true
    puts "What would you like to do (\"list planets\", \"planet details\", \"add planet\", \"find distance\", or \"exit\")? "
    input = gets.chomp
    case input
    when "list planets"
      puts solar_system.list_planets
    when "planet details"
      user_planet_details(solar_system)
    when "add planet"
      user_add_planet(solar_system)
    when "find distance"
      user_find_distance(solar_system)
    when "exit"
      continue = false
    else
      puts "Invalid input."
    end
  end
rescue NameError => error1
  puts "Error: #{error1.message}"
  main
rescue ArgumentError => error2
  puts "Error: #{error2.message}"
  main
end

main
