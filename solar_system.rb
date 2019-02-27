class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets()
    planet_list = "Planets orbiting #{star_name}: \n"
    @planets.each_with_index do |planet, i|
      planet_list << "#{i + 1}: #{planet.name} \n"
    end
    return planet_list
  end

  def find_planet_by_name(planet_name)
    found = @planets.find { |planet|
      planet.name.upcase == planet_name.upcase
    }
    return found
  end
end
