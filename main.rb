
# Wave 3
# RESTRUCTURE MAIN TO DO THE FOLLOWING
#   - Create a SolarSystem and add some Planets
#   - Enter a control loop that repeatedly asks the user what to do next.
#       + The two options are this point: list planets, exit
#   NOTE: You've already implemented listing planets.  Just call that method.

# ^^^ Done

# ADD A planet details OPTION TO THE CONTROL LOOP.
# When the user picks this option, the program should call a separate method that will:
#   - Ask them for the name of the planet they wish to learn about
#   - Display details of that planet
# NOTE:  Resue the methods you've already built to format planet info

# ^^^ Done

# ADD AN add planet OPTION TO THE CONTROL LOOP.
# When the user picks this option, the program should call a separate method that will:
#   - Ask the user for details about the planet
#   - Create a new instance of Planet with that info
#   - Add it to the SolarSystem
# The new planet should now appear in the list of planets.
#  The user should be able to see its details.

# ^^^ Done

# ====

# Add another file, main.rb

# Should require planet.rb
# Should contain one method called 'main'
# 'main' method should
#   - create two different instances of Planet
#   - print out some of their attributes

require_relative "planet"
require_relative "solar_system"

def ask
  puts "\nWhat do you want to do? (1 or 2)"
  puts "- List planets"
  puts "- Planet details"
  puts "- Exit"
  puts "- Add planet"
  print "> "
  answer = gets.chomp
  return answer
end

def more_info(prompt)
  print "#{prompt} "
  answer = gets.chomp
end

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red", 6.41693e23, 1.524, "Robots live here!")
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  input = ask.downcase
  until input == "exit"
    if input.include?("list")
      list = solar_system.list_planets
      puts list
    elsif input.include?("details")
      puts "What planet do you want to know about?"
      planet = gets.chomp.capitalize
      found_planet = solar_system.find_planet_by_name(planet)
      found_planet.each { |planet| puts planet.summary }
    elsif input.include?("add")
      name = more_info("Planet name > ").capitalize
      color = more_info("Planet color > ").downcase
      mass = more_info("Mass > ")
      distance_from_sun = more_info("Distance from sun > ")
      fun_fact = more_info("Fun fact > ")
      new_planet = Planet.new(name, color, mass, distance_from_sun, fun_fact)
      solar_system.add_planet(new_planet)
    end
    input = ask.downcase
  end

  #   puts "#{earth.name} is a beautiful #{earth.color} marble in space.  Fun fact: #{earth.fun_fact}"
  #   puts "#{mars.name} is a beautiful #{mars.color} marble in space.  Fun fact: #{mars.fun_fact}"

  # puts earth.summary
  # puts mars.summary
end

main

# solar_system = SolarSystem.new("Sol")

# earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
# earth2 = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
# mars = Planet.new("Mars", "red", 6.41693e23, 1.524, "Robots live here!")
# solar_system.add_planet(earth)
# solar_system.add_planet(mars)
# # Duplicate Earth for testing
# solar_system.add_planet(earth2)

# list = solar_system.list_planets
# puts list

# found_planet = solar_system.find_planet_by_name("Earth")

# # found_planet is an instance of class Planet
# puts
# puts found_planet
# found_planet.each { |planet| puts planet.summary }

# # There's no planet with a given name
# found_planet = solar_system.find_planet_by_name("Venus")
