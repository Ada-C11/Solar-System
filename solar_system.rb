class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet_instance)
    planets << planet_instance
  end

  def list_planets
    planet_list_string = "Planets orbiting #{star_name}\n"
    planets.each_with_index do |planet, index|
      planet_list_string = planet_list_string + "#{index + 1}. #{planet.name}\n"
    end
    return planet_list_string
  end

  def find_planet_by_name(planet_name)
    planets.each do |planet|
      if planet_name.upcase == planet.name.upcase
        return planet
      end
    end
    raise ArgumentError, "There's no planet of that name"
  end

  def distance_between(planet1, planet2)
    planet2.distance_from_sun_km - planet1.distance_from_sun_km
  end
end
