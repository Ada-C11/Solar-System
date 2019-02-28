require_relative 'planet'
require_relative 'solar_system'
require 'faker'
require 'ruby_figlet'
require 'colorize'
def colors(string)
  string.chars.map {|char| char.colorize([:red, :cyan, :green, :blue].sample)}.join
end

def user_add_planet(solar_system)
  puts "\nAdding a planet is for scientists ONLY. Are you a real scientist? (Y/N)"
  y_n = gets.chomp.upcase
    if y_n == "Y"
      puts "<Computer nods respectfully.>"
      puts "Please provide some data:"
      print "Name of planet: "
      name = gets.chomp
      print "Surface color: "
      color = gets.chomp
      print "Planetary mass in kilograms/10^24?: "
      mass_kg = gets.chomp.to_f
      print "Orbital radius in kilometers/10^22: "
      distance_from_sun = gets.chomp.to_f
      fun_fact = ""
      new_planet = Planet.new(name, color, mass_kg, distance_from_sun, fun_fact)
      solar_system.add_planet(new_planet)
      puts "\nThank you for the science.\n"
    else
      puts "Please try again with more scientific integrity."
    end
end

def display_data(solar_system)
  print "What is the name of the planet you wish to learn about? "
  query = gets.chomp
  found_planet = solar_system.find_planet_by_name(query)
  return found_planet
end

def main
  solar_system = SolarSystem.new(Faker::Space.star)

  8.times do |x|
  new_planet = []
  new_planet[x] = Planet.new(Faker::Books::Dune.unique.planet, Faker::Color.color_name, rand(100...10000), rand(100...10000), "")
  solar_system.add_planet(new_planet[x])
  x += 1
  end

  loooop = true
  while loooop == true do
    puts
    puts colors("---------------------------------------------------------")
    puts
    puts "What would you like to do next?\n"
    puts "1. List Planets".colorize(:green)
    puts "2. See Planet Details".colorize(:blue)
    puts "3. Add Planet".colorize(:magenta)
    puts "4. Quit".colorize(:red)
    puts
    print "Enter the number of your choice: "
    control = gets.chomp.to_i
      case control
      when 1
        puts "#{solar_system.list_planets}\n"
      when 2
        the_query = display_data(solar_system)
        puts colors(the_query.summary)
      when 3
        user_add_planet(solar_system)
      when 4
        puts "Goodbye!"
        exit
      else
        puts "That is not a valid choice.\n\n".colorize(:red)
      end
      puts colors("---------------------------------------------------------")
      sleep 1
    end
end
puts "Welcome to ...\n\n"
sleep 0.5
puts colors("       ▀▄   ▄▀        ▄▄▄████▄▄▄        ▄██▄         ▀▄   ▄▀              ▀▄   ▄▀          ▀▄   ▄▀")
sleep 0.5
puts colors("       ▄█▀███▀█▄      ███▀▀██▀▀███     ▄█▀██▀█▄      ▄█▀███▀█▄            ▄█▀███▀█▄        ▄█▀███▀█▄")
sleep 0.6
puts colors("      █▀███████▀█     ▀▀███▀▀███▀▀     ▀█▀██▀█▀     █▀███████▀█          █▀███████▀█      █▀███████▀█")
sleep 0.7
puts colors("      ▀ ▀▄▄ ▄▄▀ ▀      ▀█▄ ▀▀ ▄█▀      ▀▄    ▄▀     ▀ ▀▄   ▄▀ ▀          ▀ ▀▄▄ ▄▄▀          ▀▄    ▄▀    <3")
puts "\n\n"
space_title = RubyFiglet::Figlet.new "o u t e r * s p a c e", 'basic'
space_title.show
puts "\n"
main