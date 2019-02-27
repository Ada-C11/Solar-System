require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets #should keep? if so, need to add to spec

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    raise ArgumentError, "Planet has already been added." if @planets.any? { |i| i.name.downcase == planet.name.downcase }
    @planets.push(planet)
  end

  def list_planets
    list = "\nPlanets orbitting #{@star_name}:\n"
    @planets.each_with_index do |planet, index|
      list = list + "#{index + 1}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(name)
    @planets.each do |planet|
      return planet if (planet.name).downcase == name.downcase
    end
    # if the planet is not found, raise an exception
    raise ArgumentError, "#{name} is not found."
  end

  # Optional: takes two planet names as parameters and returns the distance between them
  def distance_between(planet_name1, planet_name2)
    distance_planet1 = find_planet_by_name(planet_name1).distance_from_sun_km
    distance_planet2 = find_planet_by_name(planet_name2).distance_from_sun_km
    return (distance_planet1 - distance_planet2).abs
  end
end
