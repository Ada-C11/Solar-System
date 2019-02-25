# class that is responsible for keeping track of a collection of instances of Planet
class SolarSystem
  # creating methods to read/return star_name & planets
  attr_reader :star_name, :planets

  # creating a constructor that accepts and stores star_name in an instance variable
  # and assigns an empty array to the instance variable planets
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end
end
