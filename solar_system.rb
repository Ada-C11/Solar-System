class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    planet_list = "Planets orbiting #{@star_name}\n"
    @planets.each_with_index do |item, index|
      planet_list += "#{index + 1}. #{item.name}\n"
    end

    return planet_list
  end
end
