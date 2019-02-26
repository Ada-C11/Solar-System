require_relative "planet"
require_relative "solar-system"

def control_loop(solar_system)
  input = ""
  possible_inputs = {
                      l: "list planets",
                      q: "exit",
                      d: "display planet details",
                      a: "add planet",
                      m: "measure the distance between 2 planets",
                    }

  while input != "q"
    puts "What would you like to do?"
    possible_inputs.each do |key, value|
      puts "Press #{key} to #{value}"
    end

    input = gets.chomp.downcase.to_sym

    case input
    when :l
      puts solar_system.list_planets
    when :d
      puts "\nWhich planet do you want to learn about?"
      planet_name = gets.chomp
      planet = solar_system.find_planet_by_name(planet_name)
      if planet
        puts planet.summary
      else
        puts "That planet is not in the solar system! Try again."
      end
    when :a
      puts "\nLet's get some details about the planet you want to add."
      puts "First, what is your planet's name?"
      name = gets.chomp
      puts "Next, what color is your planet?"
      color = gets.chomp
      puts "Okay, what is the mass of your planet in kilograms?"
      mass_kg = gets.chomp.to_f
      puts "Great! How far is your planet from the sun in kilometers?"
      distance_from_sun = gets.chomp.to_f
      puts "Finally, enter a fun fact about your planet!"
      fun_fact = gets.chomp

      begin
        new_planet = Planet.new(name, color, mass_kg, distance_from_sun, fun_fact)
        solar_system.add_planet(new_planet)
      rescue ArgumentError => e
        puts "\nFailed to add your planet. Try again."
        puts e.message
      else
        puts "\nSuccessfully added your planet!"
      end
    when :m
      puts "What is the first planet?"
      planet1_name = gets.chomp
      planet1 = solar_system.find_planet_by_name(planet1_name)
      puts "What is the second planet?"
      planet2_name = gets.chomp
      planet2 = solar_system.find_planet_by_name(planet2_name)

      if planet1 && planet2
        distance = solar_system.distance_between(planet1_name, planet2_name)
        puts "The distance between #{planet1_name} and #{planet2_name} is #{distance} km."
      elsif !planet1 && !planet2
        puts "#{planet1_name} and #{planet2_name} are not in the solar system. Try again."
      elsif !planet1
        puts "#{planet1_name} is not in the solar system. Try again"
      elsif !planet2
        puts "#{planet2_name} is not in the solar system. Try again"
      end
    when :q
      return
    else
      puts "#{input} is not one of the options. Try again!"
    end
    puts "\n"
  end
end

def main

  # Make a solar system
  solar_system = SolarSystem.new("Sun")

  # Make some planets
  mercury = Planet.new("Mercury",
                       "gray",
                       3.285e23,
                       5.791e7,
                       "A year on Mercury is just 88 days long!")
  venus = Planet.new("Venus",
                     "yellow",
                     4.867e24,
                     1.082e8,
                     "Venus is the closest to earth in size, mass, and surface gravity.")

  earth = Planet.new("Earth",
                     "blue",
                     5.972e24,
                     1.496e8,
                     "About 71% of Earth's surface is water ")
  mars = Planet.new("Mars",
                    "red",
                    6.39e23,
                    2.279e8,
                    "Opportunity explored the surface of Mars for 14 years!")

  # Add some planets to the solar system
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  # Start the control loop.
  puts "Welcome to the solar system program."
  control_loop(solar_system)
end

main
