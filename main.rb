require_relative "planet"
require_relative "solar_system"

# Restructure `main` to do the following:
#   1. Create a `SolarSystem` and add some `Planet`s
#   1. Enter a control loop that repeatedly asks the user what to do next. The two options at this point are `list planets` and `exit`.

def main
  new_sol_sys = SolarSystem.new("Phunghoule")
  bebop = Planet.new("Bebop", "gray", 5, 2.2, "Bebop's nickname is Mrs. Tubbins!")
  ninou = Planet.new("Ninou", "black", 3, 2.2, "Ninou is the best planet ever!")
  andrew = Planet.new("Andrew", "white", 91, 3, "Andrew is full of gas")
  new_sol_sys.add_planet(bebop)
  new_sol_sys.add_planet(ninou)
  new_sol_sys.add_planet(andrew)

  puts "What do you want to do next? Type either LIST PLANETS, or EXIT."
  input = gets.chomp.downcase
  if input.downcase == "list planets"
    puts new_sol_sys.list_planets
  elsif input.downcase == "exit"
    break
  else
    puts "What do you want to do next? Type either LIST PLANETS, or EXIT."
  end
end

main

# solar_system = SolarSystem.new("Sol")

# earth = Planet.new("Earth", "red", 12345, 54321, "It's a Pepper!")
# solar_system.add_planet(earth)

# # list = solar_system.list_planets
# # puts list

# found_planet = solar_system.find_planet_by_name("Earth")

# # found_planet is an instance of class Planet
# puts "#{found_planet}"
# # # => #<Planet:0x00007fe7c2868ee8>

# # puts found_planet[0].summary
# puts found_planet.summary
