
class SolarSystem
  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  attr_reader :star_name, :planets

  def add_planet(planet_info)
    @planets << planet_info
  end

  def check_planet_found(planet)
    return @planets.map { |plant| plant.name.downcase }.include?(planet)
  end

  def list_planets
    list = ["Planets orbiting #{@star_name}\n"]
    @planets.each_with_index { |plant, index| list += ["#{index + 1}. #{plant.name.downcase}\n"] }
    return list
  end

  def find_planet_by_name(planet_name)
    # what to do if more than one planet with the given name? 
    
    # what to do it user wants to add name for planet that already exists?
    return @planets.find { |obj| obj.name.downcase == planet_name.downcase }
  end

  def distance_between(planet1, planet2)
    dist1 = @planets.find { |obj| obj.name.downcase == planet1.downcase }
    dist2 = @planets.find { |obj| obj.name.downcase == planet2.downcase }

    return (dist1.distance_from_sun_km - dist2.distance_from_sun_km).abs

  end
end
