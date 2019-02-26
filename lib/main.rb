require_relative 'planets.rb'
require_relative 'solar_system.rb'

def main
  #should create two different instances of Planet and print out some of their attributes

  solar_system = SolarSystem.new('Athleta')

  sparta = Planet.new('Sparta', 'red', 4.294e13, 1.325e2, 'full of aggressive aliens')
  solar_system.add_planet(sparta)

  venus = Planet.new('Venus', 'pink', 5.294e24, 2.493e6, 'home planet of the goddess of love')
  solar_system.add_planet(venus)

  serena = Planet.new('Serena', 'blue', 4.32e22, 1.304e2, 'home of the greatest athletes of all time')
  solar_system.add_planet(serena)

  mia = Planet.new('Mia', 'red, white, and blue', 34.5e6, 2.34e7, 'soccer is the planetary sport')
  solar_system.add_planet(mia)

  portia = Planet.new('Portia', 'black', 14.32e3, 1.46e8, 'home to fast runners')
  solar_system.add_planet(portia)

  fisher = Planet.new('Fisher', 'grey', 43.3e2, 14.56e17, 'all animals on this planet come when called')
  solar_system.add_planet(fisher)
  # list = solar_system.list_planets
  # puts list


  # found_planet = solar_system.find_planet_by_name('VEnus')

  # puts found_planet
  # puts found_planet.summary



end

main

