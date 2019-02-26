require_relative "planet.rb"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet) # takes an instance of planet
    planets << planet # add it to list of planets
  end

  def list_planets
    list_num = 1
    list_string = "Planets orbiting #{star_name}\n"
    planets.each do |planet|
      list_string << "#{list_num}. #{planet.name}\n"
      list_num += 1
    end
    return list_string
  end

  def find_planet_by_name(planet_name)
    planets.each do |planet|
      if planet.name.downcase == planet_name.downcase
        return planet.summary
      end
    end
    return "That's not a planet I have information for"
  end

  def distance_between(planet1, planet2)
    if planet1.distance_from_sun_km > planet2.distance_from_sun_km
      return planet1.distance_from_sun_km - planet2.distance_from_sun_km
    elsif planet2.distance_from_sun_km > planet1.distance_from_sun_km
      return planet2.distance_from_sun_km - planet1.distance_from_sun_km
    elsif planet1.distance_from_sun_km == planet2.distance_from_sun_km
      return "There is no distance between these planets"
    end
  end
end
