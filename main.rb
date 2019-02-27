require_relative "planet"
require_relative "solar_system"
require "terminal-table"

def main
  solar_system = SolarSystem.new("Sun")

  earth = Planet.new("Earth", "turquoise", 5.97e24, 149.6e6, "We have tacos here")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", "red", 0.642e24, 227.9e6, "Named after Mars, the Roman god of war")
  solar_system.add_planet(mars)

  venus = Planet.new("Venus", "brown", 4.87e24, 108.2e6, "One day on Venus is longer than one Earth year")
  solar_system.add_planet(venus)

  jupiter = Planet.new("Jupiter", "yellow", 1898e24, 778.6e6, "Jupier has 67 moons")
  solar_system.add_planet(jupiter)

  loop do
    puts "Welcome to the Planet Info Machine"
    puts "What would you like to do?" 
    puts "Enter the number of your choice:
      1. List planets
      2. Get planet details
      3. Add a new planet
      4. Exit"
      choice = gets.chomp.to_i

    case choice
      when 1
        puts solar_system.list_planets
      when 2
        puts "What planet would you like details on?"
        user_planet = gets.chomp.downcase
        puts solar_system.find_planet_by_name(user_planet)
      when 3
        solar_system.make_new_planet
      when 4
        "BYE"
        exit
    end
  end  
end

main

  # until choice == "exit" do
  #   if choice == "list planets"
  #     puts solar_system.list_planets
  #   elsif choice == "planet details"
  #     puts planet_details
  #   end

  #   puts "What would you like to do next? (list planets, planet details, exit)"
  #   choice = gets.chomp.downcase
  # end

  # puts earth.summary
  # puts mars.summary
  # puts venus.summary
  # puts jupiter.summary

  # solar_system.list_planets

  # found_planet = solar_system.find_planet_by_name('Venus')
  # puts found_planet

  # def planet_details
  #   puts "What planet would you like details on?"
  #   user_planet = gets.chomp.downcase
  #   return solar_system.find_planet_by_name(user_planet)
  # end
