class Solar_system
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet.name
  end

  def list_planets
    planet_list = "Planets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, index|
      planet_list += "\n#{index + 1}. #{planet}"
    end
    return planet_list
  end
end
