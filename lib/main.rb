require_relative "planet"
require_relative "solar_system"

def handling_input(input)
  # Optional: handling user entering bad command
  until input == "list planets" || input == "planet details" || input == "add planet" || input == "find distance" || input == "exit"
    print "Please enter \"list planets\", \"planet details\", \"add planet\", \"find distance\" or \"exit\": "
    input = gets.chomp.downcase
  end
end

def main
  # initializes the solar system's name
  solar_system = SolarSystem.new("Sol")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "it's the only planet known to support life")
  solar_system.add_planet(earth)

  venus = Planet.new("Venus", "yellow", 4.867e24, 67.3e6, "40 spacecraft have explored Venus")
  solar_system.add_planet(venus)

  mercury = Planet.new("Mercury", "blue", 3.285e23, 28.6e6, "kid-friendly")
  solar_system.add_planet(mercury)

  mars = Planet.new("Mars", "orange", 6.39e23, 141.7e6, "it has 2 moons")
  solar_system.add_planet(mars)

  jupiter = Planet.new("Jupiter", "red", 1.89e27, 495.7e6, "it has more than 75 moons")
  solar_system.add_planet(jupiter)

  saturn = Planet.new("Saturn", "brown", 5.68e26, 934.9e6, "it has 62 moons")
  solar_system.add_planet(saturn)

  uranus = Planet.new("Uranus", "blue", 8.68e25, 1.9e9, "it has 62 moons")
  solar_system.add_planet(uranus)

  neptune = Planet.new("Neptune", "purple", 1.024e26, 2.78e9, "it has 62 moons")
  solar_system.add_planet(neptune)

  puts "What would you like to do?"
  print "Please enter \"list planets\", \"planet details\", \"add planet\", \"find distance\" or \"exit\": "
  input = gets.chomp.downcase

  handling_input(input)

  until input == "exit"
    if input == "list planets"
      list = solar_system.list_planets
      puts list
    end

    if input == "planet details"
      puts "\nWhich planet do you want to learn about? Choose one: Earth, Venus, Mercury, Mars, Jupiter, Saturn, Uranus, Neptune "
      planet_chosen = gets.chomp.downcase
      # Optional: when user enters a planet that doesn't exist, raise an exception.
      if !solar_system.planets.map { |planet| planet.name }.include?(planet_chosen.capitalize)
        raise ArgumentError, "Planet entered is not in the list."
      end
      puts "\n"
      puts solar_system.find_planet_by_name(planet_chosen).summary
    end

    if input == "add planet"
      print "\nWhat is the planet's name?"
      name = gets.chomp.capitalize
      print "What is its color?"
      color = gets.chomp
      print "What is its mass(kg)?"
      mass_kg = gets.chomp.to_f
      # Optional: if user enters a bad value
      until mass_kg > 0
        print "Mass must be a number greater than 0. Please enter again: "
        mass_kg = gets.chomp.to_f
      end
      print "What is its distance from the Sun in km?"
      distance_from_sun_km = gets.chomp.to_f
      # Optional: if the user enters a bad value
      until distance_from_sun_km > 0
        print "Distance from the Sun must be a number greater than 0. Please enter again: "
        distance_from_sun_km = gets.chomp.to_f
      end
      print "What is its fun fact?"
      fun_fact = gets.chomp

      planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(planet)
      puts "\n#{name} has been added with the details below:"
      puts solar_system.find_planet_by_name(name).summary
    end

    # OPTIONAL: Implement the optional distance_between method
    if input == "find distance"
      print "Enter first planet: "
      planet_name1 = gets.chomp.downcase
      print "Enter second planet: "
      planet_name2 = gets.chomp.downcase
      puts "The distance is #{solar_system.distance_between(planet_name1, planet_name2)}"
    end
    puts "What would you like to do next?"
    print "Please enter \"list planets\", \"planet details\", \"add planet\", \"find distance\" or \"exit\": "
    input = gets.chomp
  end
end

main
