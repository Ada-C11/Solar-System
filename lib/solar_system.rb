require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
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
    found_planets = @planets.select do |planet|
      planet.name.downcase == name.downcase
    end

    # if the planet is not found, raise an exception
    raise ArgumentError, "#{name} is not found." if found_planets.empty?

    # if there's only one planet
    return "#{found_planets[0].summary}" if found_planets.length == 1

    # if there are multiple planets with the given name, list them all
    found_list = "There are multiple planets named #{name}:\n"
    found_index = 0
    found_planets.each_with_index do |found_planet, index|
      found_list += "#{found_index + 1}. #{found_planet.name}: #{found_planet.summary}.\n"
      found_index += 1
    end
    return found_list
  end
end
