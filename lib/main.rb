require_relative "planet"
require_relative "solar-system"

require "faker"
require "colorize"
require "terminal-table"
require "table_flipper"

def add_planet(solar_system)
  # Get user input for new planet's attributes
  puts "\nLet's get some details about the planet you want to add."
  puts "First, what color is your planet?".colorize(:blue)
  color = gets.chomp
  puts "Okay, what is the mass of your planet in kilograms?".colorize(:blue)
  mass_kg = gets.chomp.to_f
  puts "Great! How far is your planet from the sun in kilometers?".colorize(:blue)
  distance_from_sun = gets.chomp.to_f
  puts "Next, enter a fun fact about your planet!".colorize(:blue)
  fun_fact = gets.chomp
  puts "Finally, what is your planet's name?".colorize(:blue)
  name = gets.chomp
  # This while loop ensures that planet names are unique.
  while solar_system.planets.any? { |planet| planet.name.downcase == name.downcase }
    puts "That name is taken! Try entering another name.".colorize(:red)
    name = gets.chomp
  end

  # Try to make a planet and add it to the solar system and rescue if parameters are invalid
  begin
    new_planet = Planet.new(name, color, mass_kg, distance_from_sun, fun_fact)
    solar_system.add_planet(new_planet)
  rescue ArgumentError => e
    puts "\nFailed to add your planet. Try again.".colorize(:red)
    puts e.message
  else
    puts "\nSuccessfully added your planet!".colorize(:green)
  end
end

def measure_distance(solar_system)
  # Get the names of planets and store the planet objects in variables
  puts "\nWhat is the first planet?".colorize(:blue)
  planet1_name = gets.chomp
  planet1 = solar_system.find_planet_by_name(planet1_name)
  puts "What is the second planet?".colorize(:blue)
  planet2_name = gets.chomp
  planet2 = solar_system.find_planet_by_name(planet2_name)

  # If both planet objects exist, calculate the distance, otherwise print error messages
  if planet1 && planet2
    distance = solar_system.distance_between(planet1_name, planet2_name)
    puts "\nThe distance between #{planet1_name} and #{planet2_name} is #{distance} km.".colorize(:green)
  elsif !planet1 && !planet2
    puts "\n#{planet1_name} and #{planet2_name} are not in the solar system. Try again.".colorize(:red)
  elsif !planet1
    puts "\n#{planet1_name} is not in the solar system. Try again".colorize(:red)
  elsif !planet2
    puts "\n#{planet2_name} is not in the solar system. Try again".colorize(:red)
  end
end

def display_details(solar_system)
  # Get a planet name as user input and use find_planet_by_name to retrieve the planet object
  puts "\nWhich planet do you want to learn about?".colorize(:blue)
  planet_name = gets.chomp
  planet = solar_system.find_planet_by_name(planet_name)
  if planet
    puts planet.summary.colorize(:green)
  else
    puts "#{planet_name} is not in the solar system! Try again.".colorize(:red)
  end
end

def control_loop(solar_system)
  input = ""
  possible_inputs = {
                      l: "list planets",
                      d: "display planet details",
                      a: "add planet",
                      m: "measure the distance between 2 planets",
                      q: "exit",
                    }
  table_rows = possible_inputs.map { |key, value| [key.to_s.colorize(:blue), value.to_s.colorize(:blue)] }
  table = Terminal::Table.new :rows => table_rows, :headings => ["Key".colorize(:blue), "Action".colorize(:blue)]

  while input != "q"
    puts "What would you like to do?".colorize(:blue)
    puts table
    input = gets.chomp.downcase.to_sym

    case input
    when :l
      puts solar_system.list_planets.colorize(:green)
    when :d
      display_details(solar_system)
    when :a
      add_planet(solar_system)
    when :m
      measure_distance(solar_system)
    when :q
      return
    else
      puts "\n#{input} is not one of the options. Try again!".colorize(:red)
    end

    puts "\n"
  end
end

def main
  # Make a solar system
  solar_system = SolarSystem.new(Faker::Space.star)

  # Make some planets and add them to the solar system
  4.times do
    fun_fact = ""
    case rand(1..3)
    when 1
      fun_fact = "Discovered by #{Faker::FunnyName.name_with_initial} on " +
                 "#{Faker::Date.forward}, this planet is home to the rare " +
                 "#{Faker::Movies::HitchhikersGuideToTheGalaxy.specie}."
    when 2
      fun_fact = "#{rand(100)}% of this planet's atmosphere tastes like " +
                 "#{Faker::Dessert.flavor} and its surface is composed mainly of #{Faker::Food.ingredient}. "
    when 3
      fun_fact = "This planet was discovered accidentally by students at #{Faker::University.name} " +
                 "and named for their pet #{Faker::Creature::Animal.name}."
    end
    new_planet = Planet.new(Faker::Movies::HitchhikersGuideToTheGalaxy.unique.planet,
                            Faker::Color.color_name,
                            (Faker::Number.decimal(1, 3)).to_f * 10 ** (rand(22..24)),
                            (Faker::Number.decimal(1, 3)).to_f * 10 ** (rand(7..9)),
                            fun_fact)
    solar_system.add_planet(new_planet)
  end

  # Start the control loop.
  puts "Welcome to the solar system program."
  control_loop(solar_system)
end

main
