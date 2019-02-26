require_relative 'planet'

class SolarSystem
  attr_reader = :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def list_planets
    list_of_planets = "Planets orbiting #{@star_name} \n"
    @planets.each_with_index do |planet, index|
      # Concatenate output each loop
      list_of_planets += "#{index+1}. #{planet.name} \n"
    end
    return list_of_planets
  end

  def find_planet_by_name(planet_name)
    matching_planets = @planets.select{|planet| planet.name.downcase == planet_name.downcase}
    if matching_planets.length == 1
      return matching_planets[0]
    elsif matching_planets.length > 1
      puts "/nThere is a duplicate in our planets' names. They should have unique names, don't you think?"
    else
      puts "/nThere is no such planet. Please try again."
      return false
    end
  end

  def distance_between(planet_one, planet_two)
    dist_one = find_planet_by_name(planet_one).distance_from_sun_km
    dist_two = find_planet_by_name(planet_two).distance_from_sun_km
    distance = (dist_one - dist_two).abs
    return distance
  end
end
