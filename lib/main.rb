# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main
  # ...do stuff with planets...
  earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
  mars = Planet.new('Mars', 'red', 6.4171e23, 2.279e8, 'May have previously held water')
  
  solar_system = SolarSystem.new('Sol')
  solar_system.add_planet(earth)

  puts earth.summary

  puts $\

  puts mars.summary

  puts $\

  list = solar_system.list_planets
  puts list
end

main