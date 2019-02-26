require_relative 'planets.rb'

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
      planetNames = @planets.map { |p| p.name.downcase }
      if (planetNames.include?(planet.name.downcase))
        raise ArgumentError.new("This planet already exists in the solar system")
      end
      @planets << planet
  end

  def list_planets
    list = "Planets orbiting #{star_name}: \n"

    @planets.each_with_index do |planet, i|
      list << "#{i+1}. #{planet.name}\n"
    end
    return list
  end

  def find_planet_by_name(lost_planet)
      @planets.each do |planet|
        if planet.name.downcase.include?(lost_planet.downcase)
          return planet
      end
    end
    raise ArgumentError.new("This planet does not exist in the solar system")
  end

  def distance_between(planet_1_name, planet_2_name)
    planet_1 = find_planet_by_name(planet_1_name)
    planet_2 = find_planet_by_name(planet_2_name)

    return (planet_1.distance_from_sun_km - planet_2.distance_from_sun_km).abs
  end
end