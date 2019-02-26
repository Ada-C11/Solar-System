require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  # Instantiation
  solar_system = SolarSystem.new("Sol")

  mercury = Planet.new("Mercury", "light grey", "3.3011×10^23", "57.91 million", "It has no moons")
  venus = Planet.new("Venus", "red-orange", "4.867 × 10^24", "108.2 million", "One day on Venus is longer than one year on Earth")
  earth = Planet.new("Earth", "blue-green", "5.972e24", "1.496e8", "Only planet known to support life")
  mars = Planet.new("Mars", "red", "6.39 × 10^23", "227.9 million", "It's our next destination")
  jupiter = Planet.new("Jupiter", "white, red, orange, brown and yellow", "1.898 × 10^27", "778.5 million", "Jupiter can fit 1,300 Earths")
  saturn = Planet.new("Saturn", "yellowing-brown", "5.683 × 10^26", "1.434 billion", "It is the least dense planet in the solar system")
  uranus = Planet.new("Uranus", "pale blue", "8.681 × 10^25", "2.871 billion", "Uranus’ moons are named after characters created by William Shakespeare and Alexander Pope")
  neptune = Planet.new("Neptune", "bright azure blue", "1.024 × 10^26", "4.495 billion", "Neptune has an average surface temperature of -214°C – approximately -353°F.")

  # Add planets to solar system
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  # puts ""
  # puts earth.summary
  # puts ""
  # puts mars.summary
  
  list = solar_system.list_planets
  # List out all the planets orbiting Sol
  # for i in (0..list.length - 1)
  #   print list[i]
  # end


  # Find planet by name
  # found_planet = solar_system.find_planet_by_name("Saturn")
  # puts "\n\nThe planet you are looking for has been found: #{found_planet}"

  # WAVE 3
  # Loop to ask user what they want to do

  loop do
    puts "\n\nWhat would you like to do?"
    puts "List planets    planet details      Exit"
    answer = gets.chomp.downcase

    # list planets
    if (answer == "list planets")
      for i in (0..list.length - 1)
        print list[i]
      end
    elsif (answer == "planet details")
      puts "Which planet would you like to know about?"
      planet_choice = gets.chomp.downcase
      puts "Planet choice: #{planet_choice}"

      found_planet = solar_system.find_planet_by_name(planet_choice.capitalize)

      puts "Found planet: #{found_planet}"

      puts "Here are some details about #{found_planet}: "
      print found_planet.summary
      
    else
      break
    end
  end

end # main class end


main
