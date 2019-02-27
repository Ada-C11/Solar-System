require "lolcat"
require "colorize"
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

def display(string, char = true, lag = 0.03)
  if char
    count = 0
    string.each_char do |ch|
      print ch
      sleep lag if count < 36
      count += 1
    end
  else
    puts string
  end
  return true
end

def load_solar_system_program
  @solar_system = SolarSystem.new("Err")

  create_system(solar_system)
  return "Welcome to the".cyan + " Solar System Program.".light_magenta.bold \
           + read_file("./solar.txt").yellow + "\n\nYou are in the Solar System of #{solar_system.name}.\n".cyan
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
  string_of_options = "\nEnter ".green + "LIST".cyan.on_blue.italic + " to display all the planets in system.".green \
    + "\nEnter ".green + "ADD ".cyan.on_blue.italic + " to add planets".green \
    + "\nEnter ".green + "CALC".cyan.on_blue.italic + " to calculate the distance between two planets".green \
    + "\nEnter ".green + "INFO".cyan.on_blue.italic + " to display information about a planet".green \
    + "\nEnter ".green + "Q   ".cyan.on_blue.italic + " to quit program\n".green
end

def get_option
  print "\nPlease Enter Selection: ".cyan
  user_input = gets.chomp.upcase
  return user_input if ["LIST", "ADD", "CALC", "INFO", "Q"].include?(user_input)
  "Hmm... ".each_char do |ch|
    print ch
    sleep 0.09
  end
  puts "I don't understand \"#{user_input}\".".red.bold.underline
  sleep 1
  get_option
end

def do_option(option_key)
  case option_key
  when "LIST"
    display(solar_system.list_planets.yellow)
  when "ADD"
    user_add_planet
  when "CALC"
    user_calc_distance
  when "INFO"
    display(user_info_planet.cyan)
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
  rescue ArgumentError => error_message
    puts "Error: #{error_message} \nReselect option from main menu to try again."
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

def read_file(file)
  read = ""
  File.open(file, "r") do |f|
    read += f.read
  end
  return read
end

main
