require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  puts "Welcome to my Solar System!"
  # Instantiation
  solar_system = SolarSystem.new("Sol")

  mercury = Planet.new("Mercury", "light grey", 3.3011e23, 5.791000000e1, "It has no moons")
  venus = Planet.new("Venus", "red-orange", 4.867e24, 1.082000000e2, "One day on Venus is longer than one year on Earth")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "its the only planet known to support life")
  mars = Planet.new("Mars", "red", 6.39e23, 2.279000000e2, "It's our next destination")
  jupiter = Planet.new("Jupiter", "white, red, orange, brown and yellow", 1.898e27, 7.785000000e2, "Jupiter can fit 1,300 Earths")
  saturn = Planet.new("Saturn", "yellowing-brown", 5.683e26, 1.434000000000e0, "It is the least dense planet in the solar system")
  uranus = Planet.new("Uranus", "pale blue", 8.681e25, 2.871000000000e0, "Uranus’ moons are named after characters created by William Shakespeare and Alexander Pope")
  neptune = Planet.new("Neptune", "bright azure blue", 1.024e26, 4.495000000000, "Neptune has an average surface temperature of -214°C – approximately -353°F.")

  # Add planets to solar system
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  # WAVE 3
  # Loop to ask user what they want to do

  loop do
    puts "\n\nWhat would you like to do?"
    puts "List planets    Planet details      Add planet     Exit"
    answer = gets.chomp.downcase

    # list planets
    if (answer == "list planets")
      list = solar_system.list_planets
      for i in (0..list.length - 1)
        print list[i]
      end

    elsif (answer == "planet details")
      puts "Which planet would you like to know about?"
      planet_choice = gets.chomp.downcase
      puts "Planet choice: #{planet_choice}"
      found_planet = solar_system.find_planet_by_name(planet_choice.capitalize)
      puts "Found planet: #{found_planet}"
      puts "Here are some details about #{found_planet.name}:\n"
      print found_planet.summary

    elsif (answer == "add planet")
      solar_system.discovered_planet

    else
      exit
    end
  end

end # main class end


main
