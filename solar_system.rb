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
      if planet.name.capitalize == planet_string.capitalize
        return planet
      end
    end
    return nil
  end

  def distance_between(planet_1, planet_2)
    distance = (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
    return distance
  end
end
