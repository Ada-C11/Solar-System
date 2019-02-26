require_relative 'planet'
require_relative 'solar_system'

# This method should create two different instances of Planet and print out some 
# of their attributes.
def main
    solar_system = SolarSystem.new('Sol')

    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    jupiter = Planet.new('Jupiter', 'reddish-brown', 1.898e27, 7.783e8, 'Cannot become a star')

    solar_system.add_planet(earth)
    solar_system.add_planet(jupiter)

    list = solar_system.list_planets

    puts "Planets orbiting"
    list.each_with_index do |planet, index|
        puts "#{index + 1}. #{planet}"
    end
end

# puts main.summary
main
