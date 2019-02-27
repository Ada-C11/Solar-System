require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  display(load_solar_system_program)
  continue = true
  while continue
    display(options)
    continue = do_option(get_option)
  end
  display(good_bye)
end

def display(string)
  puts string
  return true
end

def load_solar_system_program
  @solar_system = SolarSystem.new("Err")
  create_system(solar_system)
  return "Welcome to the Solar System Program." \
           + "\n\nYou are in the Solar System of #{solar_system.name}.\n"
end

def solar_system
  return @solar_system
end

def create_system(solar_system)
  solar_system.add_planet(Planet.new("Willerr", "blue", 5.972e24, 1.496e28,
                                     "raining rainbows"))
  solar_system.add_planet(Planet.new("Saverr", "amber", 9.34e54, 2.345e23,
                                     "saving time by reversing spin"))
  solar_system.add_planet(Planet.new("Katerr", "green", 2.342e33, 4.234e43,
                                     "being made of dolphins"))
  solar_system.add_planet(Planet.new("Singherr", "onyx", 4.23e23, 46.2e23,
                                     "emmitting song-like sounds"))
end

def options
  return ("\nEnter LIST to display all the planets in system." \
           + "\nEnter ADD to add planets" \
           + "\nEnter CALC to calculate the distance between two planets" \
           + "\nEnter INFO to display information about a planet" \
           + "\nEnter Q to quit program")
end

def get_option
  print "\nPlease Enter Selection: "
  user_input = gets.chomp.upcase
  return user_input if ["LIST", "ADD", "CALC", "INFO", "Q"].include?(user_input)
  puts "Hmm... I don't understand \"#{user_input}\"."
  get_option
end

def do_option(option_key)
  case option_key
  when "LIST"
    display(solar_system.list_planets)
  when "ADD"
    user_add_planet
  when "CALC"
    user_calc_distance
  when "INFO"
    display(user_info_planet)
  when "Q"
    return false
  end
end

# handle exceptions?
def user_add_planet
  puts "To add a planet follow the prompts: "
  print "Name? "
  name = gets.chomp.capitalize
  print "Color? "
  color = gets.chomp.downcase
  print "Mass in kg? "
  mass = gets.chomp.to_i
  print "Distance from sun in km? "
  distance = gets.chomp.to_i
  print "Fun fact? "
  fun_fact = gets.chomp
  begin
    solar_system.add_planet(Planet.new(name, color, mass, distance, fun_fact))
  rescue ArgumentError => e
    puts "Error: #{e} \nReselect option from main menu to try again."
  end
  return true
end

# handle exceptions?
def user_calc_distance
  print "Enter first planet: "
  planet1 = get_planet
  return true if !planet1
  print "Enter second planet: "
  planet2 = get_planet
  return true if !planet2
  print "The distance between #{planet1.name} and #{planet2.name} is "
  puts "#{solar_system.distance_between(planet1, planet2)} km "
  return true
end

def user_info_planet
  print "\nWhich planet would you like more information on? "
  planet = get_planet
  return planet.summary if planet
  return "Try using the numeric tags associated with planets from LIST command."
end

def get_planet
  planet_name = gets.chomp.capitalize
  begin
    planet = solar_system.find_planet_by_name(planet_name)
  rescue ArgumentError
    planet = planet_name.to_i.to_s == planet_name ? solar_system.planets[planet_name.to_i - 1] : nil
    if !solar_system.is_a_Planet?(planet)
      puts "Hmm.. #{planet_name} is not in the system of #{solar_system.name}"
      puts "\nReselect option from main menu to try again."
    end
  end
  return planet
end

main
