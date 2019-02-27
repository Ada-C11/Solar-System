require_relative "planet"
require_relative "solar_system"

# Restructure `main` to do the following:
#   1. Create a `SolarSystem` and add some `Planet`s
#   1. Enter a control loop that repeatedly asks the user what to do next. The two options at this point are `list planets` and `exit`.

def main
  solar_system = SolarSystem.new("Phunghoule")

  bebop = Planet.new(name: "Bebop", color: "gray", mass_kg: 5, distance_from_sun_km: 2.2, fun_fact: "Bebop's nickname is Mrs. Tubbins!")
  ninou = Planet.new(name: "Ninou", color: "black", mass_kg: 3, distance_from_sun_km: 2.2, fun_fact: "Ninou is the best planet ever!")
  andrew = Planet.new(name: "Andrew", color: "white", mass_kg: 91, distance_from_sun_km: 3, fun_fact: "Andrew is full of gas")

  solar_system.add_planet(bebop)
  solar_system.add_planet(ninou)
  solar_system.add_planet(andrew)

  loop do
    puts "Choose your next adventure: "
    puts "\ntype LIST to see a list of all planets, "
    puts "type LEARN to learn about the planets,"
    puts "type ADD to create your own planet, or"
    puts "type EXIT to quit"

    selection = gets.chomp.downcase

    case selection
    when "exit"
      puts "Goodbye."
      exit
    when "list"
      puts "#{solar_system.list_planets}"
    when "learn"
      case learn_choice
      when "bebop"
        puts "#{solar_system.planets[0].summary}"
      when "ninou"
        puts "#{solar_system.planets[1].summary}"
      when "andrew"
        puts "#{solar_system.planets[2].summary}"
      else puts "Error: not a valid selection. Try again: "
learn_choice = gets.chomp.downcase
      end
    when "add"
      solar_system.add_planet_details
      puts "Thanks! Your planet has been added to the solar system: "
      puts "#{solar_system.list_planets}"
    end
  end
end

main
