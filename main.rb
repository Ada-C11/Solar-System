require_relative 'planet'
require_relative 'solar_system'

def main
  solar_system = SolarSystem.new('Sol')

  mercury = Planet.new('Mercury', 'dark-gray', 3.285e23, 57.91e8, 'First rock from the sun')
  solar_system.add_planet(mercury)
  venus = Planet.new('Venus', 'reddish-brown', 4.867e24, 67.24e8, 'Something something about Venus')
  solar_system.add_planet(venus)
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  solar_system.add_planet(earth)

  puts "---Testing output---"
  puts earth.name
  puts earth.fun_fact 
  puts earth.summary

  puts "---Testing add & list planet---"
  list = solar_system.list_planets
  puts list

  puts "---Testing find planet by name---"
  found_planet = solar_system.find_planet_by_name('Earth')
  puts "Found Planet: #{found_planet}"
  puts "Planet Summary: \n#{found_planet.summary}"

  puts "---Testing distance between planets---"
  distance = solar_system.distance_between('Earth', 'Mercury')
  puts "Distance: #{distance}"
end

main