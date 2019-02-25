# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  # ...do stuff with planets...
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, 'There are alien colonies here')

  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)
  solar_system.add_planet(mars)

  #puts earth.summary
  #puts mars.summary

  list = solar_system.list_planets
  puts list

  found_planet = solar_system.find_planet_by_name('Earth')
  puts found_planet

end

main