require_relative 'planet.rb'
require_relative 'solar_system.rb'

def main
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    mars = Planet.new('Mars', 'red', 6.4171e23, 2.29e8, 'Mars has two moons called Phobos and Deimos')
    mercury = Planet.new('Mercury', 'white', 3.3022e23, 6.98169e7, 'Mercury is the smallest planet in the solar system')
    jupiter = Planet.new('Jupiter', 'orange', 1.8982e27, 7.79e8, 'Jupiter is the largest planet in the solar system')
    venus = Planet.new('Venus', 'yellow', 4.8675e24, 1.082e8, 'Venus has the longest rotation period of any planet in the Solar System')
    uranus = Planet.new('Uranus', 'baby blue', 8.6810e25, 2.75e9, 'Uranus is named after the Greek mythological figure Ouranos, the God of the sky')
    # puts earth.summary
    # puts mars.summary

    sun = SolarSystem.new("Sun")
    sun.add_planet(earth)
    sun.add_planet(mars)
    sun.add_planet(mercury)
    sun.add_planet(jupiter)
    sun.add_planet(venus)
    sun.add_planet(uranus)

    list = sun.list_planets
    puts list

    found_planet = sun.find_planet_by_name('Jupiter')
    puts found_planet.summary

    puts "The distance between Earth and Mars is #{sun.distance_between('Jupiter', 'Mars')} km"
end

main