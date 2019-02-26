require_relative "planet"
require_relative "solar_system"
# require "pry"
# def main
#   earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
#   puts earth.summary
#   sol = solarsystem.new("Sol")
#   sol.add_planet(earth)
#   list = sol.list_planets
#   puts list
#   found_planet = sol.find_planet_by_name("Earth")
#   # found_planet is an instance of class Planet
#   puts found_planet
#   # => #<Planet:0x00007fe7c2868ee8>
#   puts found_planet.summary
#   # => Earth is a blue-green planet ...
# end

def main2
  sol = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  mars = Planet.new("Mars", "red", 4.962e24, 1.656e8, "Home of Martians")
  venus = Planet.new("Venus", "green", 8.972e24, 2.496e8, "Dense planet")
  sol.add_planet(earth)
  sol.add_planet(mars)
  sol.add_planet(venus)

  command = ""
  until command == "exit"
    puts "\nPlease type one of the following options: [1] list planets, [2] planet details, [3] add planet, [4] exit\n"
    command = gets.chomp
    case command
    when "list planets"
      puts sol.list_planets
    when "planet details"
      def ask_user_for_planet(solarsystem)
        puts "Please enter the planet you would like to know more about"
        puts solarsystem.find_planet_by_name(gets.chomp).summary
      end

      ask_user_for_planet(sol)
    when "add planet"
      def user_creates_planet(solarsystem)
        puts "enter planet name"
        name = gets.chomp
        puts "enter planet color"
        color = gets.chomp
        puts "enter planet mass"
        mass_kg = gets.chomp
        puts "enter planet distance from sun"
        distance_from_sun_km = gets.chomp
        puts "enter fun fact"
        fun_fact = gets.chomp
        new_planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
        solarsystem.add_planet(new_planet)
        return new_planet
      end

      user_creates_planet(sol)
      # binding.pry
    end
  end
end

main2
