class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet.name
  end

  def list_planets
    @planets.each do |planet|
      next
    end
    return @planets
  end
end

# milky_way = SolarSystem.new("milky_way")
# milky_way.add_planet("Earth")

# puts milky_way.planets
