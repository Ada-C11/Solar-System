require_relative "planet.rb"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet) # Takes an instance of planet
    planets << planet # Adds it to planets array
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
        return planet
      end
    end
    return "That's not a planet I have information for"
  end

  # Use .abs to get absolute value of difference so program doesn't output a negative distance
  def distance_between(planet1, planet2)
    return (planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs
  end
end
