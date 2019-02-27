

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
    string = "\nPlanets orbitting #{star_name}\n"
    @planets.each_with_index do |planet, index|
      string += "#{index + 1}.  #{planet.name}\n"
    end
    return string
  end

  def find_planet_by_name(planet_name, match)
    @planets.each do |planet|
      # return planet.name == planet_name ? planet : false
      # return planet if planet.name == planet_name
      if planet.name == planet_name
        match = true
        return planet

        # else
        #   return
      end
    end
    if match == false
      return false
    end
  end

  def distance_between(planet_q)
    @planets.each do |planet|
      if planet.name == planet_q
        return planet.distance_from_sun_km
      end
    end
  end
end
