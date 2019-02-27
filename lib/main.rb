require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  solar_system = SolarSystem.new("Sol")
  mercury = Planet.new("Mercury", "gray", 0.330, 57909227, "It's hot, but not too hot for ice")
  solar_system.add_planet(mercury)
  venus = Planet.new("Venus", "pale yellow", 4.87, 108209475, "Doesn’t have any moons, and we aren’t sure why.")
  solar_system.add_planet(venus)
  puts
  puts "Solar System Information"
  puts "What do you want to do?"
  user_selection = get_user_selection
  while user_selection == "1" || user_selection == "2" || user_selection == "3" || user_selection == "4"
    if user_selection == "1"
      puts
      puts solar_system.list_planets
    elsif user_selection == "2"
      puts
      planet_details(solar_system)
    elsif user_selection == "3"
      puts
      add_planet(solar_system)
    elsif user_selection == "4"
      puts
      distance_between(solar_system)
    end
    user_selection = get_user_selection
  end
end

def get_user_selection
  user_selection = nil
  until user_selection == "1" || user_selection == "2" || user_selection == "3" || user_selection == "4" || user_selection == "5"
    puts
    print "Enter 1 to list planets, 2 to get details on a planet, 3 to add a planet, 4 to get the distance between two planets, or 5 to exit: "
    user_selection = gets.chomp
  end
  return user_selection
end

def planet_details(solar_system)
  print "Which planet would you like to learn more about? "
  planet_choice = gets.chomp
  found_planet = solar_system.find_planet_by_name(planet_choice)
  if found_planet != nil
    puts found_planet.summary
  end
end

def add_planet(solar_system)
  print "What is the name of the planet? "
  name = gets.chomp
  print "What is the color of the planet? "
  color = gets.chomp
  print "What is the mass of the planet in kg? "
  mass = gets.chomp.to_i
  if mass <= 0
    mass = get_positive_number("mass", mass)
  end
  print "What is the distance from the sun in km? "
  distance = gets.chomp.to_i
  if distance <= 0
    distance = get_positive_number("distance", distance)
  end
  print "What is a fun fact about this planet? "
  fact = gets.chomp
  new_planet = Planet.new(name, color, mass, distance, fact)
  solar_system.add_planet(new_planet)
end

def distance_between(solar_system)
  print "What is the first planet? "
  planet1 = gets.chomp
  planet1 = solar_system.find_planet_by_name(planet1)
  return if planet1 == nil
  print "What is the second planet? "
  planet2 = gets.chomp
  planet2 = solar_system.find_planet_by_name(planet2)
  return if planet2 == nil
  puts "The distance between #{planet1.name} and #{planet2.name} is #{solar_system.distance_between(planet1, planet2)} kilometers."
end

def get_positive_number(name, value)
  if value <= 0
    until value > 0
      print "#{name.capitalize} should be a number greater than 0. What is the #{name}? "
      value = gets.chomp.to_i
    end
  end
  return value
end

main
