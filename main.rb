require_relative "planet"
require_relative "solar_system"

def add_new_planet
  puts "Okay, what's the name of the planet we're missing?"
  name = gets.chomp
  puts "Cool, what color is it?"
  color = gets.chomp
  puts "What about its mass in kilograms?"
  mass_kg = gets.chomp
  puts "Now I need its distance from the sun in kilometers."
  distance_from_sun_km = gets.chomp
  puts "And finally, what's a fun fact about this planet?"
  fun_fact = gets.chomp

  new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
  #return new_planet
end

def main
  solar_system = SolarSystem.new("Sol")

  mercury = Planet.new("Mercury", "grey", 0.33e24, 57.9e6, "it has ice in craters that never receive sunlight.")
  solar_system.add_planet(mercury)

  venus = Planet.new("Venus", "yellow", 4.87e24, 108.2e6, "it probably had a moon, but collided with it after another impact reversed the planet's spin.")
  solar_system.add_planet(venus)

  earth = Planet.new("Earth", "blue", 5.97e24, 149.6e6, "it has more life than the rest of the known universe, as far as we know.")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", "red", 0.64e24, 227.9e6, "it has liquid water.")
  solar_system.add_planet(mars)

  jupiter = Planet.new("Jupiter", "orange", 1898e24, 778.3e6, "its gravity breaks apart many comets.")
  solar_system.add_planet(jupiter)

  saturn = Planet.new("Saturn", "gold", 569e24, 1427e6, "it's not known how or when its rings formed.")
  solar_system.add_planet(saturn)

  uranus = Planet.new("Uranus", "blue", 86.8e24, 2871e6, "it also has large storms in its atmosphere, like Jupiter.")
  solar_system.add_planet(uranus)

  neptune = Planet.new("Neptune", "blue", 102e24, 5913e6, "the wind can go as fast as 1,700 km/hr - faster than the speed of sound.")
  solar_system.add_planet(neptune)

  continue = true

  while continue == true
    puts "What would you like to do next?"
    puts "list planets | planet details | add planet | exit"
    get_input = gets.chomp
    if get_input == "exit"
      puts "See ya!"
      return continue == false
    elsif get_input == "list planets"
      puts solar_system.list_planets
    elsif get_input == "planet details"
      puts solar_system.find_planet_by_name
    elsif get_input == "add planet"
      solar_system.add_planet(add_new_planet)
      puts "Planet added to the solar system!"
    else
      puts "Invalid prompt."
    end
  end
end

#   unless the_input == "exit"
#     if the_input == "list planets"
#       puts solar_system.list_planets
#       get_input
#     elsif the_input == "planet details"
#       puts solar_system.find_planet_by_name
#       get_input
#     elsif the_input == "add planet"
#       add_new_planet
#       puts solar_system.add_planet(add_new_planet)
#       get_input
#     else
#       puts "Invalid prompt."
#     end
#   else puts "See ya!"   end

#   puts "The farthest planet from Sol is #{neptune.name} at #{neptune.distance_from_sun_km} kilometers!"

#   puts "The biggest planet by far is #{jupiter.name} at #{jupiter.mass_kg} kilograms!"

#   puts saturn.summary

#   list = solar_system.list_planets
#   puts list

#   found_planet = solar_system.find_planet_by_name("earth")
#   puts found_planet
#   puts found_planet.summary

puts "Welcome to the solar system!"
main

#   def get_input
#     puts "What would you like to do next?"
#     puts "list planets | planet details | add planet | exit"
#     return gets.chomp
#     # return user_input
#   end

#   puts "What would you like to do next?"
#   puts "list planets | planet details | add planet | exit"
#   the_input = gets.chomp
