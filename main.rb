require_relative "planet"
require_relative "solar_system"
require "pry"

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
      puts "#{solar_system.list_planets}"
      puts "Type the name of the planet you want to learn about: "
      learn_choice = gets.chomp.capitalize!

      solar_system.planets.each_with_index do |planet, index|
        puts "#{planet.name}"
        if planet.name == learn_choice
          puts "#{planet.summary}"
        end
      end
    when "add"
      solar_system.add_planet_details
      puts "Thanks! Your planet has been added to the solar system: "
      puts "#{solar_system.list_planets}"
    end
  end
end

main
