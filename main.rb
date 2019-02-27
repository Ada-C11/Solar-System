require_relative "planet"
require_relative "solar_system"

solar_system = SolarSystem.new("Sol")
mercury = Planet.new("Mercury", "dark grey", 3.285e23, 5.791e7, "Named for the messenger of the Roman gods due to its orbital speed")
solar_system.add_planet(mercury)
venus = Planet.new("Venus", "red-brown", 4.867e24, 1.082e8, "Both the morning star and the evening star")
solar_system.add_planet(venus)
earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "The densest planet in the solar system")
solar_system.add_planet(earth)
mars = Planet.new("Mars", "red", 6.4169e23, 2.279e8, "Home to the tallest mountain in the solar system")
solar_system.add_planet(mars)
jupiter = Planet.new("Jupiter", "red, white, and brown", 1.898e27, 7.785e8, "The planet with the shortest day in the solar system")
solar_system.add_planet(jupiter)

puts "Hello, please see the the following options for this program.  You can: \nA: List Planets \nB: List Planet Details \nC: Add Planet \nD: Find the Distance Between Two Planets"
puts "Please enter the corresponding letter for the action you would like to take.  You can exit by entering 'exit'."
response = gets.chomp.downcase
while response != "exit"
  if response == "a"
    puts solar_system.list_planets
  elsif response == "b"
    puts "Please enter what planet you would like to learn about: "
    planet_choice = solar_system.find_planet_by_name(gets.chomp)
    puts planet_choice.summary
  elsif response == "c"
    solar_system.user_adds_planet
  elsif response == "d"
    puts solar_system.distance_between_by_input
  else
    puts "Please make sure to select from the choices above. You can exit be entering 'exit'."
  end
  puts "\nPlease enter what you would like to do: \nA: List Planets \nB: List Planet Details \nC: Add Planet \nD: Find the Distance Between Two Planets"
  response = gets.chomp
end
