require_relative "planet.rb"
require_relative "solar_system.rb"
def main 
  solar_system = SolarSystem.new('Sol')
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)
  mars = Planet.new('Mars', "red", 6.39e23, 2.279e8,'Mars is named after a mythological figure - the Roman god of war')
  solar_system.add_planet(mars)
  venus = Planet.new('Venus', "yellow-white", 4.867e24, 1.082e8,'Venus is the second brightest natural object in the sky')
  solar_system.add_planet(venus)

  while true
    puts "What would you like to do? You can get planet details, list planets, add planet or exit."
    user_input = gets.chomp.downcase
    if user_input == "exit"
      return
    
    elsif user_input == "list planets"
      list = solar_system.list_planets
      puts list
    
    elsif user_input == "planet details"
      puts "What is the name of the planet you wish to learn about?"
      name = gets.chomp
      found_planet = solar_system.find_planet_by_name(name)
      puts found_planet
      puts found_planet.summary if found_planet.is_a? Planet
   
    elsif user_input == "add planet"
      puts "What is the name of the planet?"
      name = gets.chomp.downcase
      puts "What color is the planet?"
      color = gets.chomp.downcase
      puts "What is the mass of the planet in kg?"
      mass_kg = gets.chomp.to_i
      puts "What is the distance from the sun in km?"
      distance_from_sun_km = gets.chomp.to_i
      puts "Give us a fun fact about the planet!"
      fun_fact = gets.chomp

      name = Planet.new(name.capitalize, color, mass_kg, distance_from_sun_km, fun_fact)
      solar_system.add_planet(name)
    end
  end

end
main