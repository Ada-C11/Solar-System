require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name, planets)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    planet_list = "Planets orbiting #{star_name}: "
    i = 0
    @planets.each do
      planet_list += "\n#{i + 1}. #{@planets[i].name}"
      i += 1
    end
    return planet_list
  end
end

earth = Planet.new("Earth", "blue-green", 5.972e24, 1.496e8, "The densest planet in the solar system")
venus = Planet.new("Venus", "red-brown", 4.867e24, 1.082e8, "Both the morning star and the evening star")

sun = SolarSystem.new("sun", nil)

sun.add_planet(earth)
sun.add_planet(venus)

puts sun.list_planets
