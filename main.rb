# main.rb
require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  pluto = Planet.new("Pluto", "grey", 100, 500, "Is Pluto even a planet?")
  saturn = Planet.new("Saturn", "red", 600, 800, "Saturn has rings")

  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  solar_system.add_planet(saturn)

  puts "Testing distance between (should be 300)"
  puts solar_system.distance_between(pluto, saturn)

  # TODO: Error handling on user input
  # TODO: Try using class for this part
  puts "What do you want to do next? \nEnter one: \nList planets, \nPlanet details, \nAdd planet or \nExit"
  answer = gets.chomp

  until answer == "exit"
    if answer == "list planets"
      list = solar_system.list_planets
      puts list
      puts "What do you want to do next?"
      answer = gets.chomp.downcase
    elsif answer == "planet details"
      puts "Which planet?"
      planet_answer = gets.chomp.downcase
      puts solar_system.find_planet_by_name(planet_answer)
      puts "What do you want to do next?"
      answer = gets.chomp.downcase
    elsif answer == "add planet"
      puts "What is the planet named?"
      name = gets.chomp.downcase
      puts "What color is the planet?"
      color = gets.chomp.downcase
      puts "What is the mass in kg of the planet?"
      mass = gets.chomp.to_f
      until mass.to_f > 0
        puts "Enter a positive number"
        mass = gets.chomp.to_f
      end
      puts "What is the distance of the planet from the sun in km?"
      distance = gets.chomp.to_f
      until distance.to_f > 0
        puts "Enter a positive number"
        distance = gets.chomp.to_f
      end
      puts "Enter a fun fact about the planet"
      fun_fact = gets.chomp
      name = Planet.new(name, color, mass, distance, fun_fact)
      solar_system.add_planet(name)
      puts "What do you want to do next?"
      answer = gets.chomp.downcase
    end
  end
end

main
