require "colorize"
require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  display(load_solar_system_program)
  continue = true
  while continue
    puts options
    continue = do_option(get_option)
  end
  display(good_bye)
end

def display(string, char = true, lag = 0.03)
  if char
    count = 0
    string.each_char do |ch|
      print ch
      sleep lag if count < 100
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
           + read_file("./art/solar.txt").yellow + "\n\nYou are in the Solar System of #{solar_system.name}.\n".cyan
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
  string_of_options = "\n\nEnter ".green + "LIST".cyan.on_blue.italic + " to display all the planets in system.".green \
    + "\nEnter ".green + "ADD ".cyan.on_blue.italic + " to add planets".green \
    + "\nEnter ".green + "CALC".cyan.on_blue.italic + " to calculate the distance between two planets".green \
    + "\nEnter ".green + "INFO".cyan.on_blue.italic + " to display information about a planet".green \
    + "\nEnter ".green + "Q   ".cyan.on_blue.italic + " to quit program\n".green
  return string_of_options
end

def get_option
  print "\nPlease Enter Selection: ".cyan
  user_input = gets.chomp.upcase
  return user_input if ["LIST", "ADD", "CALC", "INFO", "Q"].include?(user_input)
  display("Hmm... ", true, 0.5)
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
    sleep 1
  when "Q"
    return false
  end
end

def user_add_planet
  display("\nTo add a planet follow the prompts: \n".yellow)
  print "Name? ".yellow
  name = gets.chomp.capitalize
  print "Color? ".yellow
  color = gets.chomp.downcase
  print "Mass in kg? ".yellow
  mass = gets.chomp.to_i
  print "Distance from sun in km? ".yellow
  distance = gets.chomp.to_i
  print "Fun fact? ".yellow
  fun_fact = gets.chomp
  begin
    solar_system.add_planet(Planet.new(name, color, mass, distance, fun_fact))
    display("\nCongratulations #{solar_system.planets[-1].name} Succesfully Added!!".cyan.on_blue)
    puts read_file("./art./planet.txt").light_magenta
  rescue ArgumentError => error_message
    display("\nError: #{error_message} \nReselect option from main menu to try again.".red.underline.bold)
  end
  return true
end

def user_calc_distance
  print "\nEnter first planet: ".yellow
  planet1 = get_planet
  return true if !planet1
  print "Enter second planet: ".yellow
  planet2 = get_planet
  return true if !planet2
  begin
    distance = solar_system.distance_between(planet1, planet2)
    puts read_file("./art./distance.txt").blue.bold
    display("\nDirections from #{planet1.name.upcase} to #{planet2.name.upcase}:".light_magenta)
    display("ONWARD -> ".cyan.on_blue)
    display("%0.3e km ".cyan.on_blue % [distance])
    display("\nIt will take %0.2e light years, expected day of arrival: May 4th".magenta % [distance / 1.057e13])
    sleep 1
  rescue ArgumentError => error_message
    display("\nError: #{error_message} \nReselect option from main menu to try again.".red.underline.bold)
  end
  return true
end

def user_info_planet
  print "\nWhich planet would you like more information on? ".yellow
  planet = get_planet
  return planet.summary if planet
  return "Try using the numeric tags associated with planets from LIST command.".red
end

def get_planet
  planet_name = gets.chomp.capitalize
  begin
    planet = solar_system.find_planet_by_name(planet_name)
  rescue ArgumentError
    planet = planet_name.to_i.to_s == planet_name ? solar_system.planets[planet_name.to_i - 1] : nil
    if !solar_system.is_a_Planet?(planet)
      display("Hmm... ", true, 0.5)
      puts "#{planet_name} is not in the system of #{solar_system.name}".cyan
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

def good_bye
  return "\n\nGoodbye! Visit the #{solar_system.name} system again soon! Safe Travels!\n".magenta.bold.italic.underline + read_file("./art./unicorn.txt").light_magenta.bold + "\n"
end

main
