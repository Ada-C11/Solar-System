require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  solar_system = SolarSystem.new("Sol")
  mercury = Planet.new("Mercury", "gray", 0.330, 57909227, "It's hot, but not too hot for ice")
  solar_system.add_planet(mercury)
  venus = Planet.new("Venus", "pale yellow", 4.87, 108209475, "Doesn’t have any moons, and we aren’t sure why.")
  solar_system.add_planet(venus)
  puts "What do you want to do?"
  user_selection = get_user_selection
  while user_selection == "1" || user_selection == "2" || user_selection == "3"
    if user_selection == "1"
      puts solar_system.list_planets
    elsif user_selection == "2"
      planet_details(solar_system)
    elsif user_selection == "3"
      add_planet(solar_system)
    end
    user_selection = get_user_selection
  end
end

def get_user_selection
  user_selection = nil
  until user_selection == "1" || user_selection == "2" || user_selection == "3" || user_selection == "4"
    print "Enter 1 to list planets, 2 to get details on a planet, 3 to add a planet, or 4 to exit: "
    user_selection = gets.chomp
  end
  return user_selection
end

def planet_details(solar_system)
  puts "Which planet would you like to learn more about?"
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
