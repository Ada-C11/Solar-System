
class SolarSystem

  attr_reader :star_name, :planets

  def initialize (star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet (planet)
    @planets.push(planet)
  end

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

  # looks through the planets array and finds the instance of calling planet.name that is the same as the planet you entered. Method returns nil if not found
  # techinically if there are multiple planets with the same name then we can look up another unique value like planet.color and compare that instead
  def find_planet_by_name(planet_name)
    planet = @planets.find {|planet| planet.name.upcase == planet_name.upcase}
    return planet
  end

  def distance_between(first, second)
    first_planet = find_planet_by_name(first)
    second_planet = find_planet_by_name(second)
    distance = (first_planet.distance_from_sun_km - second_planet.distance_from_sun_km).abs
    return distance
  end

end

