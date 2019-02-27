
class SolarSystem

  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet (planet)
    @planets.push(planet)
  end

  # method loops through all the instances of planets and stores just the name in a seperate list
  def list_planets
    counter = 1
    list_planets = []
    list_planets.push("Planets orbiting <#{@star_name}>")
    @planets.each do |planet|
      list_planets.push("#{counter}: #{planet.name}")
      counter += 1
    end
    return list_planets.join("\n")
  end

  # takes the name of a planet as an arguments, uses #find to find the associated 
  # planet name in the instance array of all planets and returns that planet object with all properties
  def find_planet_by_name(planet_name)
    planet = @planets.find {|planet| planet.name.capitalize == planet_name.capitalize}
    return planet
  end

  # takes 2 arguments and calls the find planet method to access the distance 
  # from sun for each planet and subtracts them to get the distance between them
  def distance_between(first, second)
    first_planet = find_planet_by_name(first)
    second_planet = find_planet_by_name(second)
    distance = (first_planet.distance_from_sun_km - second_planet.distance_from_sun_km).abs
    return distance
  end

end

