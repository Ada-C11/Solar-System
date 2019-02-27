require_relative "planet"
require_relative "solar_system"

require "terminal-table"

MENU = Terminal::Table.new :title => "Menu" do |menu|
  menu << ["- List planets"]
  menu << :separator
  menu.add_row ["- Planet details"]
  menu << :separator
  menu.add_row ["- Add planet"]
  menu.add_separator
  menu.add_row ["- Exit"]
end

def options_menu
  puts MENU
  print "What do you want to do? > "
  answer = gets.chomp
  return answer
end

def get_planet_info(prompt)
  print "#{prompt} "
  answer = gets.chomp
end

def main
  solar_system = SolarSystem.new("Sol")

  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  solar_system.add_planet(earth)

  mars = Planet.new("Mars", "red", 6.41693e23, 2.279e8, "Robots live here!")
  solar_system.add_planet(mars)

  mercury = Planet.new("Mercury", "red", 3.3011e23, 5.79e7, "Smallest planet in the solar system")
  solar_system.add_planet(mercury)

  venus = Planet.new("Venus", "orange", 4.8675e24, 1.082e8, "Displays phases like those of the moon")
  solar_system.add_planet(venus)

  input = options_menu.downcase
  until input == "exit"
    if input.include?("list")
      list = solar_system.list_planets
      puts list
    elsif input.include?("details")
      print "What planet do you want to know about? > "
      planet = gets.chomp.capitalize
      found_planet = solar_system.find_planet_by_name(planet)

      if found_planet.length > 1
        puts "\nWoah!  Looks like you've got multiple matches..."
      end

      found_planet.each { |planet| puts planet.summary }
    elsif input.include?("add")
      name = get_planet_info("Planet name > ").capitalize
      color = get_planet_info("Planet color > ").downcase
      mass = get_planet_info("Mass > ").to_f
      distance_from_sun = get_planet_info("Distance from sun > ").to_f
      fun_fact = get_planet_info("Fun fact > ")
      new_planet = Planet.new(name, color, mass, distance_from_sun, fun_fact)
      solar_system.add_planet(new_planet)
    end

    input = options_menu.downcase
  end
end

main
