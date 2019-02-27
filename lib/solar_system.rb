class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    list = "Planets orbiting #{@star_name}"
    @planets.length.times.each do |i|
      list << "\n#{i + 1}. #{@planets[i].name}"
    end
    return list
  end

  def find_planet_by_name(planet_name)
    found_planet = @planets.reduce(nil) do |memo, planet|
      planet.name.downcase == planet_name.downcase ? planet : memo
    end
    if found_planet
      return found_planet
    else
      raise NameError, "No planet found with the name #{planet_name}"
    end
  end

  def distance_between(planet1, planet2)
    return "The distance between #{planet1.name} and #{planet2.name} is #{(planet1.distance_from_sun_km - planet2.distance_from_sun_km).abs} km"
  end
end
