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
    list = @planets.each_with_index.map do |planet, i|
      "#{i + 1}. #{planet.name}"
    end
    return "Planets orbiting #{@star_name}: \n#{list.join("\n")}"
  end

  def find_planet_by_name(planet_name)
    return @planets.find do |planet|
             planet.name == planet_name.capitalize
           end
  end

  # Wave 2 optional step 6
  # def distance_between(planet1, planet2)
  #   value = @planets.name(planet1). - planet2
end
