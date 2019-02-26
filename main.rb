
require_relative "planet"
require_relative "solar_system"

def main
  mercury = Planet.new("Mercury", "gray", 3.285 * 10 ** 23, 57.91 * 10 ** 6, "is the smallest of the eight planets in our solar system")
  venus = Planet.new("Venus", "pale yellow", 4.867 * 10 ** 24, 108.2 * 10 ** 6, "is the second brightest natural object in the sky")
  earth = Planet.new("Earth", "blue", 5.972 * 10 ** 24, 149.6 * 10 ** 6, "is the largest of the terrestrial planets")
  mars = Planet.new("Mars", "reddish brown", 6.39 * 10 ** 23, 227.9 * 10 ** 6, "is named after the Roman god of war")
  jupiter = Planet.new("Jupiter", "orange and white", 1.898 * 10 ** 27, 778.5 * 10 ** 6, "is two and a half times more massive than the rest of the planets in the solar system combined")
  saturn = Planet.new("Saturn", "pale gold", 5.68 * 10 ** 26, 1.434 * 10 ** 7, "is the most distant planet that can be seen with the naked eye")
  uranus = Planet.new("Uranus", "pale blue", 8.681 * 10 ** 25, 2.871 * 10 ** 7, "has only been flown past by one spacecraft... that we know of")
  neptune = Planet.new("Neptune", "pale blue", 1.024 * 10 ** 26, 4.495 * 10 ** 7, "has supersonic winds")

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(mercury)
  solar_system.add_planet(venus)
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)
  solar_system.add_planet(jupiter)
  solar_system.add_planet(saturn)
  solar_system.add_planet(uranus)
  solar_system.add_planet(neptune)

  puts "What would you like to do next? [list planets] [planet details] [add planet] [exit]"
  user_input = gets.chomp
  until user_input == "exit"
    case user_input.downcase
    when "list planets"
      puts solar_system.list_planets
    when "planet details"
      puts solar_system.planet_details
    when "add planet"
      solar_system.new_planet
    end
    puts "What would you like to do next? [list planets] [planet details] [add planet] [exit]"
    user_input = gets.chomp
  end
end

main
