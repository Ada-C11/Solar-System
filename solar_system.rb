require_relative "planet"

class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
    @planet_print = ["Planets orbiting #{star_name}"]
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    @planets.each_index do |index|
      @planet_print << "#{index + 1}. #{@planets[index].name}"
    end
    return @planet_print
  end

  def find_planet_by_name
    puts "Which planet would you like to learn about?"
    input_name = gets.chomp
    @planets.each do |each_planet|
      if each_planet.name.casecmp(input_name) == 0
        return each_planet.summary
      end
    end
    return "Invalid planet."
  end

  def find_planet_distance_by_name(a_planet)
    @planets.each do |each_planet|
      if each_planet.name.casecmp(a_planet) == 0
        return each_planet.distance_from_sun_km
      end
    end
    return "Invalid planet."
  end

  def distance_between(planet1_name, planet2_name)
    planet1_position = find_planet_distance_by_name(planet1_name)
    planet2_position = find_planet_distance_by_name(planet2_name)
    if planet1_position.is_a?(Float) == false || planet2_position.is_a?(Float) == false
      return "Invalid planet entered."
    end
    return "#{(planet2_position - planet1_position).abs} kilometers"
  end
end
