require_relative "planet"
require_relative "solar_system"

def main
  earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "Only planet known to support life")
  #   puts earth.summary

  saturn = Planet.new("Saturn", "brownish", 6.01e24, 2.4e8, "some fact")
  #   puts saturn.summary

  solar_system = SolarSystem.new("Sol")
  solar_system.add_planet(earth)
  solar_system.add_planet(saturn)

  list = solar_system.list_planets

  puts "Planets orbiting #{solar_system.star_name}:"
  list.each_with_index do |planet, i|
    puts "#{i + 1}. #{planet}"
  end
end

main
