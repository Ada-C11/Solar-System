require_relative 'planet'
require_relative 'solar_systems'

def main

  solar_system = SolarSystem.new('Sol')

  planet1 = Planet.new('Ogle', 'fiery red', 1_273_648, 938_756, 'All the ice is thought to be fresh water.')
  planet2 = Planet.new('Kepler', 'ocean blue', 2_637_482, 384_299, 'The darkest planet ever found.')
  planet3 = Planet.new('Goldilocks', 'golden yellow', 2_938_475, 827_364, 'Made of pure gold.')
  planet4 = Planet.new('Pegasi', 'dark grey', 2_837_028, 372_639, 'It rains pure iron ore.')

  solar_system.add_planet(planet1)
  solar_system.add_planet(planet2)
  solar_system.add_planet(planet3)
  solar_system.add_planet(planet4)

  loop do
    puts 'What do you want to do. (e.g enter "A")'
    puts '(A) List planets'
    puts '(B) Planet details'
    puts '(C) Add Planet'
    puts '(D) Calculate distance'
    puts '(E) Exit'

    user_choice = gets.chomp.upcase

    if user_choice == 'A'
      puts 'You selected list planets.'
      puts solar_system.list_planets
      puts "\n"
    elsif user_choice == 'B'
      puts 'Your selected Planet details'
      puts 'Which planet do you want details of?'
      user_planet_details = gets.chomp
      planet = solar_system.find_planet_by_name(user_planet_details)
      puts planet.summary
      puts "\n"
    elsif user_choice == 'C'
      puts 'You selected add planet'
      new_planet = create_planet
      solar_system.add_planet(new_planet)
      puts "\n"
    elsif user_choice == 'D'
      puts 'You selected calculate distance'
      distance = user_distance_calc(solar_system)
      puts "Distance between your 2 planets is #{distance}km"
      puts "\n"
    else
      puts 'Thanks! Exiting program.'
      puts "\n"
      break
    end
  end
end

# Takes 2 planets and calls the distance between method to calc distance between them
def user_distance_calc(solar_system)
  puts 'Add first planet'
  user_first = gets.chomp
  puts 'Add second planet'
  user_second = gets.chomp
  return solar_system.distance_between(user_first, user_second)
end

# Collects information about a new planet to be created and creates a 
# new instance of a planet with those attributes
def create_planet
  puts 'Lets collect some details about this planet:'
  puts 'Add Name'
  name = gets.chomp
  puts 'Add Color'
  color = gets.chomp
  puts 'Add Mass(kg)'
  mass = gets.chomp.to_i
  puts 'Add distance from sun(km)'
  distance = gets.chomp.to_i
  puts 'Add a fun fact'
  fact = gets.chomp
  return Planet.new(name, color, mass, distance, fact)
end

main

