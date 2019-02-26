require_relative "planet.rb"
require_relative "solar_system.rb"

def main
  create_system
  continue = true
  while continue
    display_options
    continue = do_option(get_option)
  end
end

def create_system
  err_system = SolarSystem.new("Err")
  err_system.add_planet(Planet.new("Willerr", "blue", 5.972e24, 1.496e28, "raining rainbows"))
  err_system.add_planet(Planet.new("Saverr", "amber", 9.34e54, 2.345e23, "saving time by reversing spin"))
  err_system.add_planet(Planet.new("Katerr", "green", 2.342e33, 4.234e43, "being made of dolphins"))
  err_system.add_planet(Planet.new("Singherr", "onyx", 4.23e23, 46.2e23, "emmitting song-like sounds"))
end

def display_options
  puts "options"
end

def get_option
  return "option"
end

def do_option(option)
  return false if option == "option"
end

main
