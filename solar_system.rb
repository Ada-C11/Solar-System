class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  # add planet to the solar system
  def add_planet(planet)
    @planets << planet
  end

  # displays planets in solar system
  def list_planets
    planet_list = "Planets orbiting #{@star_name}:"
    @planets.each_with_index do |planet, index|
      planet_list += "\n#{index + 1}. #{planet.name}"
    end
    return planet_list
  end

  # searches planet list for planet user inputs
  def find_planet_by_name(planet)
    found_planet = nil
    search_planet = planet.downcase.capitalize!

    @planets.each do |planet|
      if search_planet == planet.name
        found_planet = planet
      end
    end

    return found_planet
  end
end
