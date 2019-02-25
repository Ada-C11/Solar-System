class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet 
  end
end

milky_way = SolarSystem.new("milky_way")
milky_way.add_planet
