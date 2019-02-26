require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sol")
  mercury = Planet.new("Mercury", "dark-gray", 3.285e23, 57.91e8, "The smallest planet in our solar system")
  solar_system.add_planet(mercury)
  venus = Planet.new("Venus", "reddish-brown", 4.867e24, 67.24e8, "The second largest terrestrial planet")
  solar_system.add_planet(venus)
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(earth)

  list = solar_system.list_planets

  input = 0
  while input != "e"
    puts "Thank you for using our solar system generator.
    Please select among the following options (A-E):
    [A] List planets
    [B] Planet details
    [C] Add planet
    [D] Calculate distance between two planets
    [E] Exit \n"
    input = gets.chomp.downcase
    case input
    when "a"
      puts "\nHere is a list of our planets:"
      puts "#{list}\n"
    when "b"
      puts "\nPlease type the name of the planet you'd like to learn about"
      puts list
      selected_planet = gets.chomp.downcase
      puts "\n#{solar_system.find_planet_by_name(selected_planet).summary}\n\n"
    when "c"
      puts "What is the name of the planet you'd like to add?"
      usr_name = gets.chomp
      puts "What color is this planet?"
      usr_color = gets.chomp.downcase
      puts "What is its mass in kg?"
      usr_mass = gets.chomp.to_i
      puts "How far is it from the sun in km?"
      usr_dist = gets.chomp.to_i
      puts "Tell us one fun fact about this planet."
      usr_fact = gets.chomp
      usr_planet = Planet.new(usr_name, usr_color, usr_mass, usr_dist, usr_fact)
      solar_system.add_planet(usr_planet)
      # Updates list
      list = solar_system.list_planets
      puts "\nHere is a summary of planet #{usr_name}"
      puts "#{usr_planet.summary}\n\n"
    when "d"
      puts "Please select the first planet out of this list:"
      puts list
      planet_one = gets.chomp.downcase
      puts "Please select the second planet:"
      planet_two = gets.chomp.downcase
      distance = solar_system.distance_between(planet_one, planet_two)
      puts "\nDistance between #{planet_one} and #{planet_two} is #{distance} km\n\n"
    when "e"
      puts "Goodbye!"
      break
    else
      puts "That was not a valid input. Program will now terminate.\n"
      break
      # until input == 'a' || input == 'b' || input == 'c' || input == 'd' || input == 'e'
      #   puts menu
      #   input = gets.chomp.downcase
      # end
    end
  end
end

main
