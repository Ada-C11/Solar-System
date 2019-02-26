class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
    return @planets
  end

  def list_planets
    planet_list = "Planets orbiting #{star_name}\n"
    @planets.each_with_index do |planet, index|
      planet_list += "#{index + 1}.  #{planet.name}\n"
    end
    return planet_list
  end

  def find_planet_by_name(planet_string)
    @planets.each do |planet|
      if planet.name == planet_string.capitalize
        return planet
      end
    end
    return nil
  end
end
