require_relative "planet"
require_relative "solar_system"

def main
  puts "Please enter the name of your solar system:"
  solar_input = gets.chomp.to_s
  solar_system = SolarSystem.new(solar_input)
  puts "Please enter 2 planets:"
  2.times do
    puts "Enter planet name:"
    name = gets.chomp.to_s
    puts "What color is #{name}?"
    color = gets.chomp.to_s
    puts "How much does #{name} weigh in kilograms?"
    mass_kg = gets.chomp.to_s
    puts "What's #{name}'s distance to the sun in km?"
    distance_from_sun_km = gets.chomp.to_s
    puts "What is a fun fact about #{name}?"
    fun_fact = gets.chomp.to_s
    planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
    solar_system.add_planet(planet)
  end
  puts "Please enter one of the following actions:\n1. list planets\n2. planet details\n3. add planet\n4. exit"
  input = gets.chomp.to_s
  until input == "exit"
    if input == "list planets"
      puts solar_system.list_planets
    elsif input == "planet details"
      puts "From the following list, please enter the planet you'd like to know more about:\n#{solar_system.list_planets}"
      planet_info = gets.chomp.to_s
      puts "#{solar_system.find_planet_by_name(planet_info).summary}"
    elsif input == "add planet"
      puts "What planet would you like to add?"
      name = gets.chomp.to_s
      puts "What color is #{name}?"
      color = gets.chomp.to_s
      puts "How much does #{name} weigh in kilograms?"
      mass_kg = gets.chomp.to_s
      puts "What's #{name}'s distance to the sun in km?"
      distance_from_sun_km = gets.chomp.to_s
      puts "What is a fun fact about #{name}?"
      fun_fact = gets.chomp.to_s
      planet = Planet.new(name, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(planet)
    end
    puts "Please enter one of the following actions:\n1. list planets\n2. planet details\n3. add planet\n4. exit"
    input = gets.chomp.to_s
  end
end

main
