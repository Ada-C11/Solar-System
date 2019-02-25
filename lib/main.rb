require_relative 'planet.rb'

def main
    earth = Planet.new('Earth', 'blue-green', 5.972e24, 1.496e8, 'Only planet known to support life')
    mars = Planet.new('Mars', 'red', 6.4171e23, 2.29e8, 'Mars has two moons called Phobos and Deimos')
    puts earth.summary
    puts mars.summary
end

main