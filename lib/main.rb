require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
  rick_morty = SolarSystem.new('Rick and Morty')

  fantasy = Planet.new("Fantasy", "yellow", 5.972e24, 1.496e8, 
    "The Fantasy World is a planet inhabited by humans, as well as other beings, in a medieval-themed setting.")
  alphabetrium = Planet.new("Alphabetrium", "blue", 3.000e00, 6.000e8, 
    "It's the homeworld of Ice-T, an exiled native of Alphabetrium who became a well known rapper on Earth.")
  gazorpazorp = Planet.new("Gazorpazorp", "orange", 4.000e00, 10.000e8,
    "As a result of conflicts, the two genders divided. While the females flourished and advanced, the males became primitive.")
  pluto = Planet.new("Pluto", "grey", 1.000e00, 9.000e0,
    "Pluto is ruled by King Flippy Nips, a denier of Pluto's environmental shrinking crisis and close associate of Pluto's corporate leaders.")

  
  rick_morty.add_planet(fantasy)
  rick_morty.add_planet(alphabetrium)
  rick_morty.add_planet(gazorpazorp)
  rick_morty.add_planet(pluto)
  
  answer = ''
  until answer == '1' || answer == '2' || answer == '3'|| answer == '4'
    puts "Enter 1 to list planets, 2 to see a planet's details, 3 to add a planet, or 4 to exit:"
    answer = gets.chomp
  end  

  if answer == '1'
    puts rick_morty.list_planets
  
  elsif answer == '2'
    puts "What planet would you like to know more about?"
    choice = gets.chomp.capitalize
    puts (rick_morty.find_planet_by_name(choice)).summary
  
  elsif answer == '3'
    puts "Planet name:"
    name = gets.chomp.capitalize
    puts "Color:"
    color = gets.chomp.capitalize
    puts "Mass:"
    mass = gets.chomp.to_f
    puts "Distance from de Sun:"
    distance = gets.chomp.to_f
    puts "Fun fact:"
    fun_fact =  gets.chomp
    
    new_planet = Planet.new(name, color, mass, distance, fun_fact)
    rick_morty.add_planet(new_planet)
    puts new_planet.summary
  end

  # list = rick_morty.list_planets
  # #puts list

  # found_planet = rick_morty.find_planet_by_name('Alphabetrium')
  # puts found_planet
  # puts found_planet.summary

  

end

main