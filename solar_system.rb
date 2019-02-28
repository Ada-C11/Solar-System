class SolarSystem
  attr_reader :star_name, :planets

  def initialize(star_name)
    @star_name = star_name
    @planets = []
  end

  def add_planet(planet)
    @planets << planet
  end

  def list_planets
    planets_string = "\nPlanets orbiting #{@star_name}:\n"
    @planets.each_with_index do |planet, i|
      planets_string += "#{i+1}. #{planet.name} \n"
    end
    return planets_string
  end

  def find_planet_by_name(query)
    matches = @planets.select do |planet|
      planet.name == query.capitalize
    end
    if matches == []
      raise ArgumentError, "Sorry, no planet called #{query} was found.".colorize(:red)
    else
      return matches[0]
    end
  end
end