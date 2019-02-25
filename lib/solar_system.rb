# Create a class for Solar System

class SolarSystem
  # Adding readers
  attr_reader(:star_name, :planets)
  # Adding a Constructor here!
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

#   def list_planets
#     string = "Planets orbiting #{@star_name}"

#     @planets.each_with_index do |planet, index|
#       string += "{i + 1}: #{planet.name}"
#     end

#     return string
#   end
 
end