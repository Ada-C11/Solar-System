require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    if !(planet.instance_of?(Planet))
      raise ArgumentError, "The object you gave is not a Planet!"
    end
    @planets << planet
  end

  def list_planets
    list = "\nPlanets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, index|
      list += "\n#{index + 1}. #{planet.name}"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    found_planet = @planets.find(ifnone = nil) { |planet| planet.name.downcase == planet_name.downcase }
    return found_planet
  end

  def distance_between(planet1, planet2)
    first_planet = find_planet_by_name(planet1)
    second_planet = find_planet_by_name(planet2)
    if first_planet && second_planet
      distance = (first_planet.distance_from_sun - second_planet.distance_from_sun).abs
      return distance
    else
      return nil
    end
  end
end
