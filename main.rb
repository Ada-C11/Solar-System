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
  # list = solar_system.list_planets
  # puts list

  found_planet = solar_system.find_planet_by_name('Venuss')
  puts found_planet
  puts found_planet.summary if found_planet.is_a? Planet

  while true
    puts "What would you like to do next? You can list planets or exit."
    user_input = gets.chomp.downcase
    if user_input == "exit"
      return
    elsif user_input == "list planets"
      list = solar_system.list_planets
      puts list
    end
  end

end
main