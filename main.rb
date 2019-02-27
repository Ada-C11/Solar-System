# main.rb
require_relative 'planet'
require_relative 'solar_system'

def main  
   solar_system = SolarSystem.new('Sol')

   earth = Planet.new('earth', 'blue-green', '5.972e24', '1.496e8', 'only planet known to support life')
   solar_system.add_planet(earth)
   mars = Planet.new('mars', 'reddish-brown','‎0.64171','141.6 million mi','it has the longest rotation period, rotates in the opposite direction to most other planets')
   solar_system.add_planet(mars)
   jupiter = Planet.new('jupiter','orange with white bands','1,898.19','483.8 million mi','the largest in the Solar System')       
   solar_system.add_planet(jupiter)
   saturn = Planet.new('saturn','pale-gold','5.9724','890.8 million mi','second-largest in the Solar System. It is a gas giant a radius nine times that of Earth')
   solar_system.add_planet(saturn)

   list = solar_system.list_planets
   puts list

   found_planet = solar_system.find_planet_by_name("earth")
   puts found_planet.summary

end

main
