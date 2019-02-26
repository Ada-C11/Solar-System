require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
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
