# Create a class for Solar System
class SolarSystem
  # Adding readers
  attr_reader(:star_name, :planets)
  # Adding a Constructor here!
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end
  # method for printing list of planets
  def list_planets
    list = ""
    @planets.length.times do |index|
      list = list + "#{index + 1}.#{planets[index].name} \n"
    end
    return "Planets orbiting #{@star_name}:\n #{list}"
  end
  # method for seaching planets
  def find_planet_by_name(name)
    @planets.length.times do |index|
        if @planets[index].name.upcase == name.upcase
            return @planets[index]
        end
    end
  end

  def distance_between(planet1, planet2)
    planet1 = find_planet_by_name(name1)
    planet2 = find_planet_by_name(name2)
    return (distance_betweenplanet1.distance_from_sun_km - planet2.distance_from_sun_km)
  end
end