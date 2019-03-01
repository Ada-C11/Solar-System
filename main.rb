require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  solar_system = SolarSystem.new("Sol")
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  pluto = Planet.new("Pluto", "grey", 1.30900e22, 3.67e9, "Is Pluto even a planet?")
  saturn = Planet.new("Saturn", "yellow", 5.683e26, 1.4e9, "Saturn has rings")

  solar_system.add_planet(earth)
  solar_system.add_planet(pluto)
  solar_system.add_planet(saturn)

  ask_again = "What do you want to do next? (Enter LIST, DETAILS, DISTANCE, ADD, or EXIT)"

  puts "What do you want to do next? \nEnter one: \nLIST (List planets), \nDETAILS (Get planet details), \nDISTANCE (Distance between 2 planets)  \nADD (Add planet) \nEXIT (Exit program)"
  answer = gets.chomp.downcase

  until answer == "exit"
    if answer == "list"
      list = solar_system.list_planets
      puts list
      puts ask_again
      answer = gets.chomp.downcase
    elsif answer == "details"
      puts "Which planet?"
      planet_answer = gets.chomp.downcase
      correct_planet_name = solar_system.find_planet_by_name(planet_answer)
      puts correct_planet_name.summary
      puts ask_again
      answer = gets.chomp.downcase
    elsif answer == "distance"
      puts "I need two planets to measure the distance between. What is the first planet?"
      planet_answer1 = gets.chomp.downcase
      puts "What is the second planet?"
      planet_answer2 = gets.chomp.downcase
      planet1 = solar_system.find_planet_by_name(planet_answer1)
      planet2 = solar_system.find_planet_by_name(planet_answer2)
      puts "The distance between #{planet_answer1.capitalize} and #{planet_answer2.capitalize} is #{solar_system.distance_between(planet1, planet2)} kms."
      puts ask_again
      answer = gets.chomp.downcase
    elsif answer == "add"
      solar_system.user_add_planet
      puts ask_again
      answer = gets.chomp.downcase
    end
  end
end

main
