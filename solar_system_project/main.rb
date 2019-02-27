require_relative "planet.rb"
require_relative "solar_system.rb"

# def main
#   earth = Planet.new("3rd Rock From the Sun", "blue", 5.972e24, 1.496e8, "Joseph Gordon-Levitt lives there.")
#   venus = Planet.new("Venus", "Red?", 6.3453e34, 3.5943, "it's pretty hot or maybe cold there.")
# end

solar_system = SolarSystem.new("Odessa")

earth = Planet.new("Third Rock From The Sun", "blue", 5.972e24, 1.496e8, "Joseph Gordon-Levitt lives there.")
solar_system.add_planet(earth)

venus = Planet.new("Venus", "red?", 6.3453e34, 3.5943, "it's pretty hot or maybe cold there.")
solar_system.add_planet(venus)

vatican_city = Planet.new("The Holy See", "white", 100000, 4.343, "that the smallest nation on Earth is also the biggest planet in the solar system.")
solar_system.add_planet(vatican_city)

puts "Would you like to list planets, get planet details, add planet, see the distance between two planets, or exit?: "
option = gets.chomp
until option == "exit"
  if option == "list planets"
    puts solar_system.list_planets
  elsif option == "get planet details"
    puts solar_system.planet_details
  elsif option == "add planet"
    puts solar_system.add_user_planet
  elsif option == "see the distance between two planets"
    puts solar_system.distance_between_planets
  else puts "That wasn't an option. Please pick again!"
    puts "Would you like to list planets, get planet details, add planet or exit?: "
    option = gets.chomp   end
  puts "Would you like to list planets, get planet details, add planet, see the distance between two planets, or exit?: "
  option = gets.chomp
end
# found_planet = solar_system.find_planet_by_name("the holy see")
