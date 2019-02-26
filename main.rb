require_relative "planet"
require_relative "solar_system"

def main
  solar_system = SolarSystem.new("Sun")

  jupiter = Planet.new("Jupiter", "multicolor", "1.89e27", "7.78e8", "Has more than 75 moons!")
  mars = Planet.new("Mars", "red", "6.41e23", "2.27e8", "Had water in the Ancient Past!")
  earth = Planet.new("Earth", "blue-green", "5.972e24", "1.496e8", "Only planet known to support life")

  solar_system.add_planets(earth)
  solar_system.add_planets(jupiter)
  solar_system.add_planets(mars)

  x = 1
  while x != 2
    puts "What would you like to do?"
    puts "1. List planet"
    puts "2. Exit"
    puts "3. Planet details"
    puts "4. Add planet"
    x = gets.chomp.to_i
    if x == 1
      list = solar_system.list_planets
      puts list
    elsif x == 3
      puts "Which Planet would you like to know about?"
      planet = gets.chomp.downcase
      found_planet = solar_system.find_planet_by_name(planet)
      puts found_planet.summary
    elsif x == 4
      puts "What is the name of the name of the planet you want to add?"
      name = gets.chomp
      puts "What is the color of your planet?"
      color = gets.chomp
      puts "What is the weight in Kg?"
      mass = gets.chomp.to_f
      puts "What is the distance from the Sun?"
      distance = gets.chomp.to_f
      puts "Tell me a fun fact about this planet:"
      fun_fact = gets.chomp
      name = Planet.new("#{name}", "#{color}", "#{mass}", "#{distance}", "#{fun_fact}")
      solar_system.add_planets(name)
    end
  end

  #list = solar_system.list_planets

  #   found_planet = solar_system.find_planet_by_name("Earth")
  #   puts found_planet
  #   puts found_planet.summary
  #puts list
end

main
