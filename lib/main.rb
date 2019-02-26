require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  display(load_solar_sytem_program)
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

def load_solar_sytem_program
  err_system = SolarSystem.new("Err")
  create_system(err_system)
  return "Welcome to the Solar System Program. \n ou are in the Solar System of #{err_system.name}."
end

def create_system(solar_system)
  solar_system.add_planet(Planet.new("Willerr", "blue", 5.972e24, 1.496e28, "raining rainbows"))
  solar_system.add_planet(Planet.new("Saverr", "amber", 9.34e54, 2.345e23, "saving time by reversing spin"))
  solar_system.add_planet(Planet.new("Katerr", "green", 2.342e33, 4.234e43, "being made of dolphins"))
  solar_system.add_planet(Planet.new("Singherr", "onyx", 4.23e23, 46.2e23, "emmitting song-like sounds"))
end

def options
  return "\nEnter LIST to display all the planets in system."
  +"\nEnter ADD to add planets"
  +"\mEnter CALC to calculate the distance between two planets"
  +"\nEnter INFO to display information about a planet"
  +"\nEnter Q to quit program"
end

def get_option
  print "Please Enter Selection: "
  user_input = gets.chomp.upcase
  return user_input if ["LIST", "ADD", "CALC", "INFO", "Q"].include?(user_input)
  puts "Hmm... I don't understand."
  get_option
end

def do_option(option_key)
  case option_key
  when "LIST"
  when "ADD"
  when "CALC"
  when "Q"
  end
end
