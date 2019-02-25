class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = "Planets orbiting #{@star_name}"
    @planets.length.times.each do |i|
      list << "\n#{i + 1}. #{@planets[i].name}"
    end
    return list
  end
end
